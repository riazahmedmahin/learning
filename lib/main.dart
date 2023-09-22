import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Product {
  final String name;
  final double price;
  int quantity;

  Product({required this.name, required this.price, this.quantity = 0});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductList(),
    );
  }
}

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {

  List<Product> products = [
    Product(name: 'Product 1', price: 10.99),
    Product(name: 'Product 2', price: 19.99),
    Product(name: 'Product 3', price: 5.419),
    Product(name: 'Product 4', price: 12.00),
    Product(name: 'Product 5', price: 29.89),
    Product(name: 'Product 6', price: 25.67),
    Product(name: 'Product 7', price: 10.93),
    Product(name: 'Product 8', price: 19.29),
    Product(name: 'Product 9', price: 15.23),
    Product(name: 'Product 10', price: 13.55),
    Product(name: 'Product 11', price: 29.59),
    Product(name: 'Product 12', price: 2.92),
  ];

  void _buyProduct(int index) {

    setState(() {
      products[index].quantity++;
      if (products[index].quantity == 5) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Congratulations!'),
              content: Text('You\'ve bought 5 ${products[index].name}!'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    int totalQuantity = products.fold(0, (total, product) => total + product.quantity);
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text('\$${products[index].price.toStringAsFixed(2)}'),
            trailing: Column(

              children: [
                Text('counter ${products[index].quantity}'),
                ElevatedButton(
                  onPressed: () => _buyProduct(index),
                  child: Text("Buy Now"),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){

        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CartPage(totalQuantity: totalQuantity),
        ));
      },
        backgroundColor: Colors.blue,
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  final int totalQuantity;

  CartPage({required this.totalQuantity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Total Quantity: $totalQuantity'),
      ),
    );
  }
}
