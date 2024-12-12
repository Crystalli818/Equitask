import 'package:flutter/material.dart';

import 'horse.dart';
import 'horse_add_page.dart';
import 'horse_booking_page.dart';
import 'horse_list_page.dart';
import 'horse_schedule.dart';
class HorseMenuPage extends StatefulWidget {
  const HorseMenuPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<HorseMenuPage> createState() => _HorseMenuPageState();
}

class _HorseMenuPageState extends State<HorseMenuPage> {





  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Menu"),
        ),
      body:Center(child:Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        children: [
        Padding(
        padding:EdgeInsets.fromLTRB(80,20 ,80 ,50),
          child: ElevatedButton(
          child:Text("Schedule",style:TextStyle(fontSize:35.0)),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HorseSchedule(),
              ),
            );
          },),),
        Padding(
          padding:EdgeInsets.fromLTRB(80,20 ,80 ,50),
          child:ElevatedButton(
          child:Text("Booking",style:TextStyle(fontSize:35.0)),
          onPressed: () { Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const HorseBookingPage(),
            ),
          ); },),),
        Padding(
          padding:EdgeInsets.fromLTRB(80,20 ,80 ,50),
          child:ElevatedButton(
          child:Text("Horses",style:TextStyle(fontSize:35.0)),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HorseListPage(title: ""),
              ),
            );
          },),),
        Padding(
          padding:EdgeInsets.fromLTRB(10,20 ,10 ,50),
          child:ElevatedButton(
          child:Text("Add Horses/Trainers",style:TextStyle(fontSize:35.0)),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HorseAddPage(title: ""),
              ),
            );
          },),),

      ],))
    );
  }
}
