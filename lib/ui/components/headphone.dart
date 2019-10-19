// Flutter imports
import 'package:flutter/material.dart';

// My App imports
import 'package:e_commerce_headphones/ui/holders/headphone_data.dart';

class HeadPhone extends StatelessWidget {
  final HeadphoneData headphoneData;

  HeadPhone({@required this.headphoneData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: this.headphoneData.backgroundColor,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                spreadRadius: -2,
                offset: Offset(-3, -3))
          ]),
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            this.headphoneData.image,
            height: 180,
            width: 140,
          ),
          Padding(
            padding: EdgeInsets.only(top: 24),
            child: Text(
              this.headphoneData.category,
              style: TextStyle(color: Colors.grey.shade800, fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6),
            child: Text(
              this.headphoneData.name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            this.headphoneData.price,
            style: TextStyle(color: Colors.grey.shade800, fontSize: 16),
          )
        ],
      ),
    );
  }
}
