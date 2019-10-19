// Flutter imports
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// My app imports
import 'package:e_commerce_headphones/ui/holders/earphone_data.dart';

class Earphone extends StatelessWidget {
  final EarphoneData earphoneData;

  Earphone({@required this.earphoneData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12, bottom: 16),
      padding: EdgeInsets.only(left: 16, right: 32, top: 8, bottom: 8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                earphoneData.image,
                width: 80,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                earphoneData.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  earphoneData.price,
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
