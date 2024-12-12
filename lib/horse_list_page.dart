import 'package:flutter/material.dart';

import 'horse.dart';
class HorseListPage extends StatefulWidget {
  const HorseListPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<HorseListPage> createState() => _HorseListPageState();
}

class _HorseListPageState extends State<HorseListPage> {


  @override
  Widget build(BuildContext context) {
    List<Horse> listOfHorses = [];

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
          title: Text(widget.title),
        ),
        body:Column(children:[
          GridView.count(
            shrinkWrap:true,
            crossAxisCount:2,
              children:List.generate(listOfHorses.length,(index){
                return Center(
                  child:Text(
                    listOfHorses[index].name,
                  )
                );
              }




          )

          )
        ]



        )

    );
  }
}
