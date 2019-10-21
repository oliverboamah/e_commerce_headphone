import 'package:e_commerce_headphones/ui/holders/headphone_data.dart';
import 'package:e_commerce_headphones/ui/pages/headphone_detail_page.dart';
import 'package:flutter/material.dart';

class Routes {
  void goToHeadphoneDetailPage(
      BuildContext context, HeadphoneData headphoneData) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HeadphoneDetailPage(
                  headphoneData: headphoneData,
                )));
  }
}
