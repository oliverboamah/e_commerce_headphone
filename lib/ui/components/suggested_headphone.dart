import 'package:e_commerce_headphones/ui/holders/headphone_data.dart';
import 'package:flutter/material.dart';

class SuggestedHeadphone extends StatelessWidget {
  final HeadphoneData headphoneData;
  SuggestedHeadphone({this.headphoneData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: this.headphoneData.backgroundColor,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                spreadRadius: -2,
                offset: Offset(-1, -1))
          ]),
      width: 60,
      height: 60,
      child: Image.asset(
        this.headphoneData.image,
      ),
    );
  }
}
