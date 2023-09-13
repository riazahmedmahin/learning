import 'package:flutter/material.dart';
import 'package:modlive/Fragment/text2.dart';

import 'Fragment/text1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 12,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          //title: Text("Profile"),
          //centerTitle: true,
          bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.add_card),text: "Home",),
                Tab(icon: Icon(Icons.add_card),text: "Home",),
                Tab(icon: Icon(Icons.add_card),text: "Home",),
                Tab(icon: Icon(Icons.add_card),text: "Home",),
                Tab(icon: Icon(Icons.add_card),text: "Home",),
                Tab(icon: Icon(Icons.add_card),text: "Home",),
                Tab(icon: Icon(Icons.add_card),text: "Home",),
                Tab(icon: Icon(Icons.add_card),text: "Home",),
                Tab(icon: Icon(Icons.add_card),text: "Home",),
                Tab(icon: Icon(Icons.add_card),text: "Home",),
          ]),
        ),
        body: TabBarView(
          children: [
            //checkout new




          ],

        ),



      ),
    );
  }
}