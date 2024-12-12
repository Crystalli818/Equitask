import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';

class HorseBookingPage extends StatefulWidget {
  const HorseBookingPage({Key? key}) : super(key: key);

  @override
  State<HorseBookingPage> createState() => _HorseBookingPageState();
}

class _HorseBookingPageState extends State<HorseBookingPage> {
String description = "";
String noteToTrainer = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(children:[
        TextField(onChanged:(newText){description = newText;},decoration:InputDecoration(border: OutlineInputBorder(),hintText:"Description")),
        TextField(onChanged:(newText){noteToTrainer = newText;},decoration:InputDecoration(border: OutlineInputBorder(),hintText:"noteToTrainer")),
      ])
    );
  }
}