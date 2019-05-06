import 'package:flutter/material.dart';
import '../widgets/products/products.dart';

class ProductsPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  ProductsPage(this.products);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
              backgroundColor: Theme.of(context).accentColor,
            ),
            ListTile(
              leading: Icon(
                Icons.edit,
                color: Colors.black,
              ),
              title: Text('Manage Product'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/admin');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Products'),
        backgroundColor: Theme.of(context).accentColor,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.favorite,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Products(products),
    );
  }
}
