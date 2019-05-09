import 'package:flutter/material.dart';
import './price_tag.dart';
import '../ul_elements/title_default.dart';
import './address_tag.dart';

class ProductCard extends StatelessWidget {
  final Map<String, dynamic> product;
  final int productIndex;

  ProductCard(this.product, this.productIndex);

  Widget _buildCardHeader() {
    return Container(
      padding: EdgeInsets.only(
        top: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TitleDefault(
            product['title'],
          ),
          SizedBox(
            width: 10.0,
          ),
          PriceTag(
            product['price'].toString(),
          ),
        ],
      ),
    );
  }

  Widget _buildCardAction(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.info),
          onPressed: () => Navigator.pushNamed<bool>(
              context, '/product/' + productIndex.toString()),
        ),
        IconButton(
          icon: Icon(Icons.favorite_border),
          color: Colors.red,
          onPressed: () {},
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(product['image']),
          _buildCardHeader(),
          SizedBox(
            height: 10.0,
          ),
          AddressTag('New York'),
          _buildCardAction(context)
        ],
      ),
    );
  }
}
