// Flutter imports
import 'package:flutter/material.dart';

class HeadphoneData {
  String image;
  String category;
  String name;
  int inStockCount;
  String price;
  Color backgroundColor;

  HeadphoneData(
      {this.image,
      this.category,
      this.name,
      this.inStockCount,
      this.price,
      this.backgroundColor = Colors.white});
}
