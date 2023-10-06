import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const MyApp(),
    ),
  );
}

class Product {
  String image;
  String name;
  int unitPrice;
  String color;
  String size;
  int quantity;

  Product(this.image, this.name, this.unitPrice, this.color, this.size, this.quantity);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Product> products = [
    Product('images/product1.png', 'Pullover', 51, 'Black', 'L', 1),
    Product('images/product2.png', 'T-Shirt', 30, 'Gray', 'L', 1),
    Product('images/product3.png', 'Sport Dress', 43, 'Black', 'M', 1),
  ];

  void increaseItemCount(int index) {
    setState(() {
      products[index].quantity++;
    });
  }


  void decreaseItemCount(int index) {
    if (products[index].quantity > 0) {
      setState(() {
        products[index].quantity--;
      });
    }
  }

  int calculateTotalAmount() {
    int total = 0;
    for (var product in products) {
      total += product.quantity * product.unitPrice;
    }
    return total;
  }

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFF9F9F9),
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 18, 0, 24),
            child: Text(
              "My Bag",
              style: TextStyle(
                fontSize: screenWidth > 600 ? 48 : 34, // Adjust font size for larger screens
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(products[index].image, fit: BoxFit.cover),
                          Expanded(
                            child: ListTile(
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(products[index].name),
                                  Icon(Icons.more_vert),
                                ],
                              ),
                              subtitle: Align(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          const TextSpan(
                                            text: 'Color: ',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '${products[index].color}',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '  Size: ',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '${products[index].size}',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xFF9B9B9B),
                                                offset: Offset(0, 1),
                                                blurRadius: 2,
                                                spreadRadius: 0,
                                              ),
                                            ],
                                          ),
                                          child: Material(
                                            color: Colors.white,
                                            shape: CircleBorder(),
                                            child: InkWell(
                                              borderRadius: BorderRadius.circular(20),
                                              onTap: () => decreaseItemCount(index),
                                              child: Center(
                                                child: Icon(
                                                  Icons.remove,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Text(
                                            '${products[index].quantity.toString()}',
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xFF9B9B9B),
                                                offset: Offset(0, 1),
                                                blurRadius: 2,
                                                spreadRadius: 0,
                                              ),
                                            ],
                                          ),
                                          child: Material(
                                            color: Colors.white,
                                            shape: CircleBorder(),
                                            child: InkWell(
                                              borderRadius: BorderRadius.circular(20),
                                              onTap: () => increaseItemCount(index),
                                              child: Center(
                                                child: Icon(
                                                  Icons.add,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          '${products[index].unitPrice * products[index].quantity}\$',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          color: Color(0xFFF9F9F9),
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 0, 14),
                    child: Text(
                      'Total Amount:',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 16, 14),
                    child: Text(
                      '${calculateTotalAmount().toStringAsFixed(0)}\$',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  MySnackBar("Congratulations! Your order has been placed.", context);
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(343, 48),
                  backgroundColor: Color(0xffdb3022),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text(
                  "CHECK OUT",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}