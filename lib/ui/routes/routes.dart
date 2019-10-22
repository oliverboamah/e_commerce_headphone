// flutter imports
import 'package:flutter/material.dart';

// my app imports
import 'package:e_commerce_headphones/ui/holders/headphone_data.dart';
import 'package:e_commerce_headphones/ui/pages/headphone_detail_page.dart';

class Routes {
  void goToHeadphoneDetailPage(
      BuildContext context, List<HeadphoneData> headphoneDataList) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HeadphoneDetailPage(
                  headphoneDataList: headphoneDataList,
                )));
  }
}
