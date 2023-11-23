import 'dart:async';

import 'package:dart_vero/src/TimerDart/Button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dart_vero/src/TimerDart/gradient_widget.dart';

class MainPage extends StatefulWidget{
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static const maxSeconds = 60; //segons timer
  int seconds = maxSeconds;
  Timer? timer;


  void resetTimer() =>  setState(() => seconds = maxSeconds);


  void startTimer({bool reset = true}) {
    if (reset){
      resetTimer();
      }

    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (seconds > 0) {
        setState(() => seconds--);
      }
      else {
        stopTimer(reset: false);
      }
    });//Timer periodic
  }

  void stopTimer({bool reset = true}) {
    if (reset) {
      resetTimer();
    }
    setState(() => timer?.cancel());
  }


  @override
  Widget build(BuildContext context) => Scaffold(
          body: Center(
              child: Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildTime(),
                  const SizedBox(height: 80,),
                  buildButtons(),
                ],
              ),
              ),
             ),
            );

  Widget buildButtons() {
    final isRunning = timer == null ? false : timer!.isActive;
    final isCompleted = seconds == maxSeconds || seconds == 0;

    return isRunning
        ? Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonWidget(
          text: isRunning ? 'Pause' : 'Resume',
          onClicked: () {
            if(isRunning) {
              stopTimer(reset: false);
            }
            else
              {
                startTimer(reset : false);
              }
            stopTimer(reset: false);
          },
        ),
        const SizedBox(width: 12),
        ButtonWidget(
          text: 'Cancel',
          onClicked: stopTimer,
        ),
      ],
    )
        : ButtonWidget( //cridem la classe ButtonWidget de l'arxiu Button_widget.dart
      text: 'Start Timer',
      color: Colors.black,
      backgroundColor: Colors.white,
      onClicked: () {
        startTimer();
      },
    );
  }

  Widget buildTimer() =>SizedBox(
    width: 200,
      height: 200,
      child: Stack(
    fit: StackFit.expand,
    children: [
      CircularProgressIndicator(
        value: 1 - seconds / maxSeconds,
        valueColor: AlwaysStoppedAnimation(Colors.white),
        strokeWidth: 12,
        backgroundColor: Colors.greenAccent,
      ),
      Center(child: buildTime()),
    ],
  ),
  );

  buildTime() {
    if (seconds == 0) {
      return Icon(Icons.done, color: Colors.greenAccent, size: 12,);
    }
    else {
      return Text(
        '$seconds',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 80,
        ),
      );
    }
  }

}
