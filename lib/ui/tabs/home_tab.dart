// Flutter imports
import 'package:flutter/material.dart';

// My App imports
import 'package:e_commerce_headphones/ui/components/headphone_list.dart';
import 'package:e_commerce_headphones/ui/components/dotted_title.dart';
import 'package:e_commerce_headphones/ui/components/earphone_list.dart';
import 'package:e_commerce_headphones/ui/holders/earphone_data.dart';
import 'package:e_commerce_headphones/ui/holders/headphone_data.dart';

class HomeTab extends StatefulWidget {
  HomeTab({@required Key key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<HeadphoneData> headPhoneDataList = [
    HeadphoneData(
      image: 'assets/images/beats_yellow.png',
      category: 'Beats Solo',
      name: 'Club Yellow',
      price: '\$199',
      inStockCount: 3,
    ),
    HeadphoneData(
      image: 'assets/images/beats_red.png',
      category: 'Beats Solo',
      name: 'Power Beats',
      price: '\$249.95',
      inStockCount: 3,
      backgroundColor: Colors.red,
    ),
    HeadphoneData(
      image: 'assets/images/beats_yellow.png',
      category: 'Beats Solo',
      name: 'Club Yellow',
      price: '\$199',
      inStockCount: 3,
    )
  ];

  List<EarphoneData> earphoneDataList = [
    EarphoneData(
        image: 'assets/images/beats_yellow.png',
        title: 'Ivory',
        price: '\$199')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24),
      child: ListView(
        children: <Widget>[
          DottedTitle(
            title: 'Headphones',
          ),
          HeadPhoneList(
            headPhoneList: this.headPhoneDataList,
            onItemSelected: (position) => print(position),
          ),
          DottedTitle(
            title: 'Earphones',
          ),
          EarphoneList(earphoneDataList: this.earphoneDataList)
        ],
      ),
    );
  }
}
