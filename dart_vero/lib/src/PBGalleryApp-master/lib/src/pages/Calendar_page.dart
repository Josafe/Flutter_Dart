import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:proyecto_paco/src/utils/creaDrawer.dart';

class Calendar_page extends StatefulWidget {
  Calendar_page({Key? key}) : super(key: key);
  @override
  _Calendar_page createState() => _Calendar_page();
}

class _Calendar_page extends State<Calendar_page> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  TimeOfDay _time = TimeOfDay(hour: 0, minute: 0);
  DateTime? _selectedDay;
  String? fecha = ' ';
  String? tipodecita = ' ';
  String? dias;
  String? meses;
  String? anio;
  String? hora = "00";
  String? minuto = "00";

  var _lista = ['Foto carnet', 'Consulta'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Reservar cita'),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: (ListBody(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2022, 01, 01),
              lastDay: DateTime.utc(2030, 01, 01),
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                _selectTime();
                if (!isSameDay(_selectedDay, selectedDay)) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                    dias = selectedDay.day.toString();
                    meses = selectedDay.month.toString();
                    anio = selectedDay.year.toString();
                    fecha = ("${dias}/${meses}/${anio}");
                  });
                }
              },
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
            ),
            DropdownButton(
              items: _lista.map((String a) {
                return DropdownMenuItem(value: a, child: Text(a));
              }).toList(),
              onChanged: (_value) => {
                setState(() {
                  tipodecita = _value as String;
                })
              },
              hint: Text("Tipo de cita"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                "Has selecionado: ${fecha} || Hora reserva: ${hora}:${minuto} \nCita tipo: ${tipodecita}"),
            SizedBox(
              height: 20,
            ),
            //Campo de texto
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Descripcion",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  suffixIcon: Icon(Icons.text_fields)),
              onChanged: (_value) => {
                setState(() {
                  //Ya veremos que ponemos aqui
                })
              },
            )
          ],
        )),
      )),
      drawer: buildDrawer(context),
    );
  }

  //Funcion para la hora
  void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
        hora = _time.hour.toString();
        minuto = _time.minute.toString();
      });
    }
  }
}
