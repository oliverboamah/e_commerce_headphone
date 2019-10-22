// flutter imports
import 'package:flutter/material.dart';

// my app imports
import 'package:e_commerce_headphones/ui/components/headphone_list.dart';
import 'package:e_commerce_headphones/ui/components/dotted_title.dart';
import 'package:e_commerce_headphones/ui/components/earphone_list.dart';
import 'package:e_commerce_headphones/ui/holders/earphone_data.dart';
import 'package:e_commerce_headphones/ui/holders/headphone_data.dart';
import 'package:e_commerce_headphones/ui/routes/routes.dart';
import 'package:e_commerce_headphones/ui/values/colors.dart';

class HomeTab extends StatefulWidget {
  HomeTab({@required Key key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  // sample headphones
  List<HeadphoneData> headPhoneDataList = [
    HeadphoneData(
        image: 'assets/images/beats_yellow.png',
        category: 'Beats Solo',
        name: 'Club Yellow',
        price: '\$199',
        inStockCount: 3,
        categoryColor: Colors.white.withOpacity(0.8),
        nameColor: Colors.white,
        priceColor: Colors.white70,
        backgroundColor: Color(0xff6582e6)),
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
        backgroundColor: Color(0xfff33e54),
        categoryColor: Colors.white.withOpacity(0.8),
        nameColor: Colors.white,
        priceColor: Colors.white70),
    HeadphoneData(
      image: 'assets/images/beats_yellow.png',
      category: 'Beats Solo',
      name: 'Club Yellow',
      price: '\$199',
      inStockCount: 3,
    ),
    HeadphoneData(
        image: 'assets/images/beats_yellow.png',
        category: 'Beats Solo',
        name: 'Club Yellow',
        price: '\$199',
        inStockCount: 3,
        categoryColor: Colors.white.withOpacity(0.8),
        nameColor: Colors.white,
        priceColor: Colors.white70,
        backgroundColor: Color(0xff6582e6))
  ];

  // sample earphones
  List<EarphoneData> earphoneDataList = [
    EarphoneData(
        image: 'assets/images/apple_airpod.jpg',
        title: 'Ivory',
        price: '\$199.99'),
    EarphoneData(
        image: 'assets/images/ivory.jpg', title: 'Ivory', price: '\$249.99')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35), topRight: Radius.circular(35)),
          color: PRIMARY_COLOR),
      child: ListView(
        children: <Widget>[
          DottedTitle(
            title: 'Headphones',
          ),
          HeadPhoneList(
            headPhoneList: this.headPhoneDataList,
            onItemSelected: (position) => Routes()
                .goToHeadphoneDetailPage(context, this.headPhoneDataList),
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
