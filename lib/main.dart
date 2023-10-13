import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  String selectedSize = '';
  Map<String, Color> buttonColors = {
    'Small': Colors.red,
    'Medium': Colors.green,
    'Large': Colors.blue,
    'XL': Colors.orange,
    'XXL': Colors.purple,
    'XXXL': Colors.teal,
  };

  void _changeColorAndShowSnackbar(String size) {
    setState(() {
      selectedSize = size;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Selected Size: $size'),
        duration: Duration(seconds: 3),

      ),
    );
  }

  Widget _buildSizeButton(String size) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          size == selectedSize ? buttonColors[size] : Colors.grey,
        ),
      ),
      onPressed: () {
        _changeColorAndShowSnackbar(size);
      },
      child: Text(size),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Size Selector'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    _buildSizeButton('Small'),
                    SizedBox(width: 30,),
                    _buildSizeButton('Medium'),
                    SizedBox(width: 30,),
                    _buildSizeButton('Large'),
                    SizedBox(width: 30,),
                    _buildSizeButton('XL'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20), // Add some spacing between the rows
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    _buildSizeButton('XXL'),
                    SizedBox(width: 30,),
                    _buildSizeButton('XXXL'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
