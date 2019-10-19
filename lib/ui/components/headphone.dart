// Flutter imports
import 'package:flutter/material.dart';

class HeadPhone extends StatelessWidget {
  final String image;
  final String category;
  final String name;
  final int inStockCount;
  final String price;
  final Color backgroundColor;

  HeadPhone(
      {@required this.image,
      @required this.category,
      @required this.name,
      @required this.inStockCount,
      @required this.price,
      this.backgroundColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: this.backgroundColor,
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.grey,
              blurRadius: 5,
              spreadRadius: -2,
              offset: Offset(-3, -3)
          )
      ]),
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            this.image,
            height: 180,
            width: 140,
          ),
          Padding(
            padding: EdgeInsets.only(top: 24),
            child: Text(
              this.category,
              style: TextStyle(color: Colors.grey.shade800, fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6),
            child: Text(
              this.name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            this.price,
            style: TextStyle(color: Colors.grey.shade800, fontSize: 16),
          )
        ],
      ),
    );
  }
}
