import 'package:flutter/material.dart';

import 'horse.dart';
import 'horse_list_page.dart';
class HorseAddPage extends StatefulWidget {
  const HorseAddPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<HorseAddPage> createState() => _HorseAddPageState();
}

class _HorseAddPageState extends State<HorseAddPage> {
  String name = "";
int age = 0;
String gender = "";
String breed = "";
String shoes = "";
String features = "";
String feed = "";
String medication = "";
String specialCare = "";




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
        title: Text(widget.title),
      ),
      body:Column(children:[
        Row(children: [
          Image.network(width:200,
              "https://horsej.b-cdn.net/files/styles/article_large/public/pictures-videos/articles/shutterstock_733256173_-_rita_kochmarjova-mainweb.jpg?itok=wdbU0yW-"),
          Flexible(child:Column(children:[
            TextField(onChanged:(newText){name = newText;},decoration:InputDecoration(border: OutlineInputBorder(),hintText:"Name")),
            TextField(onChanged:(newText){age = int.parse(newText);},decoration:InputDecoration(border: OutlineInputBorder(),hintText:"Age")),
            TextField(onChanged:(newText){gender = newText;},decoration:InputDecoration(border: OutlineInputBorder(),hintText:"Gender")),
            TextField(onChanged:(newText){breed = newText;},decoration:InputDecoration(border: OutlineInputBorder(),hintText:"Breed")),
            TextField(onChanged:(newText){shoes = newText;},decoration:InputDecoration(border: OutlineInputBorder(),hintText:"Shoes")),
          ]))],
        ),
        TextField(onChanged:(newText){features = newText;},decoration:InputDecoration(border: OutlineInputBorder(),hintText:"Features")),
        TextField(onChanged:(newText){feed = newText;},decoration:InputDecoration(border: OutlineInputBorder(),hintText:"Feed")),
        TextField(onChanged:(newText){medication = newText;},decoration:InputDecoration(border: OutlineInputBorder(),hintText:"Medication")),
        TextField(onChanged:(newText){specialCare = newText;},decoration:InputDecoration(border: OutlineInputBorder(),hintText:"Special Care")),
        Row(children:[
          ElevatedButton(
          child:Text("Back"),
            onPressed: () {  },),
          ElevatedButton(
          child:Text("Add"),
            onPressed: () {
            Horse ollie = Horse(
              name:"ollie",
              age:14,
              gender:"stallion",
              breed:"Irish Sports Horse",
              shoes:"four",
              features:"star",
              feed:"two scoops of grains, timothy",
              medication: "none",
              specialCare:"front left hoof",
              Image: ""


            );
            Horse lewis = Horse(
              name:"Lewis",
              age:13,
              gender:"gelding",
              breed:"Belgian Warmblood",
              shoes:"two",
              features:"scar on face",
              feed: "grains and timothy",
              medication:"none",
              specialCare: "back",
              Image: ""


            );
            Horse horse = Horse(
              name:name,
              age:age,
              gender:gender,
              breed:breed,
              shoes: shoes,
              features:features,
              feed:feed,
              medication:medication,
              specialCare: specialCare,
              Image:""

            );
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HorseListPage(title: 'HorseLists',),
              ),
            );
            },)


        ])






      ])

    );
  }
}
