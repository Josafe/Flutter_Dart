import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:testfirebase/login.dart';

/*void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp().then((value) {
    runApp(const MyApp());
  });
  //runApp(const MyApp());
}*/

void main() /*async*/ {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(const MyApp());
}

Future firebaseIniciacion() async {
  FirebaseApp initialization = await Firebase.initializeApp();
  return initialization;
}

Future firebaseUsuario() async {
  final usuario = await FirebaseAuth.instance.currentUser;
  return usuario;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //return const MaterialApp(title: 'Flutter Firebase', home: MyHomePage());
    return MaterialApp(
      home: FutureBuilder(
        future: firebaseIniciacion(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return const Login();
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Creamos una instancia de Firebase
  CollectionReference coleccion =
      FirebaseFirestore.instance.collection('curso');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase-Firestore'),
        //leading: Image.asset('images/firebase_logo.png'),
      ),
      body: Center(
        child:
            /*L'accés a les dades de Cloud Firestore s'ha tornat una mica estrany des de l'actualització a cloud_firestore 2.0.0. 
            Podeu accedir a les vostres dades amb el següent codi:*/
            StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: FirebaseFirestore.instance
              .collection('curso')
              .withConverter<Map<String, dynamic>>(
                fromFirestore: (snapshot, _) =>
                    snapshot.data() ??
                    <String, dynamic>{}, //Map<String, dynamic>()
                toFirestore: (model, _) =>
                    Map<String, dynamic>.from(model), //.from(model as Map)
              )
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              //(!snapshot.hasData)
              return const CircularProgressIndicator();
            }
            //si hay datos
            List<QueryDocumentSnapshot<Object?>>? docs = snapshot.data?.docs;
            return ListView.builder(
              itemCount: docs?.length, //snapshot.data?.docs.length,
              itemBuilder: (context, index) {
                QueryDocumentSnapshot item = docs![index];
                return ListTile(
                  //title: Text(item['name']),
                  //subtitle: Text("Votos: " + item['votes'].toString()),
                  title: Text(snapshot.data?.docs[index].data()['name']),
                  subtitle: Text("Votos: " +
                      snapshot.data!.docs[index].data()['votes'].toString()),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
