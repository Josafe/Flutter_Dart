import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Firebase.initializeApp().then.((value) => runApp(MyApp())); //Per a inicialitzar la BBDD forma 2
  runApp(const MyApp());
}

Future firebaseIniciacion() async {
  FirebaseApp initialization = await Firebase.initializeApp();
  return initialization;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    home: FutureBuilder(
      future: firebaseIniciacion(),
      initialData: InitialData,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState){
          return const login();  
        }
        else {
          return const CircularProgressIndicator();
        }
        
      },
    return MaterialApp(
      title: 'Flutter Firebase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CollectionReference coleccion = FirebaseFirestore.instance.collection('Tasques');

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
        title: Text("cursos"),
      ),
      body: Center(
       
        child: StreamBuilder(
          stream: coleccion.snapshots(), 
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if(!snapshot.hasData) { //Si no te dades per a mostrar la bbdd
               return Center(child: CircularProgressIndicator());
            }
            List<QueryDocumentSnapshot<Object?>>? documentos = snapshot.data?.docs;
            return ListView.builder(
              itemCount: documentos != null?
              itemBuilder: (context, index) {
                QueryDocumentSnapshot item = documentos![index];  
                return ListTile(
                  leading: Checkbox(value: item['done'], onChanged: (valor){
                    var _docIdSelected = documentos[index].id;
                    print(_docIdSelected);
                    setState((){
                      
                      coleccion.doc(_docIdSelected).update({'done'});
                    });
                  }, //Li passem un valor
                  ),
                  title: Text(item['what']),
                );
              });
          }),
      ),
    );
  }
}
