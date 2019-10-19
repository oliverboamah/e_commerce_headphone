import 'package:e_commerce_headphones/ui/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DottedTitle extends StatelessWidget {
  final String title;

  DottedTitle({this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 24, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this.title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                width: 30,
                height: 6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: ACCENT_COLOR),
              )
            ],
          ),
          Icon(
            Icons.more_horiz,
            color: Colors.white,
            size: 30,
          )
        ],
      ),
    );
  }
}
