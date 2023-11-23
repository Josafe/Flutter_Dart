import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Input text Vero';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

   // DateTime? dt = await showDatePicker(context: "context", initialDate: initialDate, firstDate: firstDate, lastDate: lastDate)
    var seleccio = "Volar";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(


            decoration: InputDecoration(
              suffixIcon: Icon(Icons.accessibility),
              icon: Icon(Icons.account_circle),
              border: OutlineInputBorder(),
              hintText: 'Nombre',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
           // leading: Icon(Icons.attach_email),
           // trailing: Icon(Icons.alternate_email),
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.attach_email),
              icon: Icon(Icons.alternate_email),
              border: OutlineInputBorder(),
              hintText: 'Email',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
           // leading: Icon(Icons.lock),
           // trailing: Icon(Icons.lock_open),
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.lock),
              icon: Icon(Icons.lock_open),
              border: OutlineInputBorder(),
              hintText: 'Password',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TableCalendar(
            firstDay: DateTime.utc(2000, 1, 1),
            lastDay: DateTime.utc(2048, 12, 1),
            focusedDay: DateTime.now(),
          ),

        ),
   //TextEditingController per a modificar el text

    DropdownButton<String>(
    //value: dropdownValue,

    icon: const Icon(Icons.arrow_downward),
    elevation: 16,
    style: const TextStyle(color: Colors.deepPurple),
    underline: Container(
    height: 2,
    color: Colors.deepPurpleAccent,
    ),
    onChanged: (String? newValue) {
        var dropdownValue = newValue!;
    },
    items: <String>['Volar', 'Rayos X', 'Super Aliento', 'Super fuerza']
        .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
    value: value,
    child: Text(value),
    );
    }).toList(),
    )],
    );
  }
}