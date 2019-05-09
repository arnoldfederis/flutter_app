import 'package:flutter/material.dart';
import '../widgets/ul_elements/title_default.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double price;
  final String description;

  ProductPage(this.title, this.imageUrl, this.price, this.description);

  Widget _buildAddressPriceRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('New York'),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          child: Text('|'),
        ),
        Text('\$$price')
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Theme.of(context).accentColor,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Container(
              child: TitleDefault(title),
              padding: EdgeInsets.all(10.0),
            ),
            _buildAddressPriceRow(),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Text(description),
            )
          ],
        ),
      ),
    );
  }
}
