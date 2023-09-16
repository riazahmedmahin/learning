import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});


  var My_List = [
    "Apples",
    "Bannanas",
    "Bread",
    "Milk",
    "Egges",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blue,
        title: Text("My Shopping List",style: TextStyle(color: Colors.white),),centerTitle: true,

        actions: [
          Icon(Icons.shopping_cart,color: Colors.white,),
        ],
      ),
      body:ListView.builder(
          itemCount: My_List.length,

          itemBuilder: (context,index){
            return ListTile(
              title: Text(My_List[index]),
              leading: Icon(Icons.shopping_basket),
            );
          }),

    );
  }
}



