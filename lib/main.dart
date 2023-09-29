import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyImageFeed(),
    );
  }
}

class MyImageFeed extends StatelessWidget {
  final List<String> dummyImageUrls = List.generate(
    10,
        (index) => "https://via.placeholder.com/150",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return (orientation == Orientation.portrait)
              ? buildPortraitLayout()
              : buildLandscapeLayout();
        },
      ),
    );
  }

  Widget buildPortraitLayout() {
    return ListView.builder(
      itemCount: dummyImageUrls.length,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Image.network(dummyImageUrls[index]),
          ),
        );
      },
    );
  }

  Widget buildLandscapeLayout() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: dummyImageUrls.length,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Image.network(dummyImageUrls[index]),
          ),
        );
      },
    );
  }
}
