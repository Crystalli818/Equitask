import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';

class HorseSchedule extends StatefulWidget {
  const HorseSchedule({Key? key}) : super(key: key);

  @override
  State<HorseSchedule> createState() => _HorseScheduleState();
}

class _HorseScheduleState extends State<HorseSchedule> {
  final List<NeatCleanCalendarEvent> _eventList = [
    NeatCleanCalendarEvent('Lesson at 7 with Crystal and Ollie',
        startTime: DateTime.parse('2024-12-04 07:00:00Z'),
        endTime: DateTime.parse('2024-12-04 07:30:00Z'),
        color: Colors.orange,
        isMultiDay: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Calendar(isExpandable:true,isExpanded: true,locale:"en_US", eventsList:_eventList, datePickerType:DatePickerType.date,),
    );
  }
}