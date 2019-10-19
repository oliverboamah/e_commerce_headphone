// Flutter imports
import 'package:e_commerce_headphones/ui/components/dotted_title.dart';
import 'package:flutter/material.dart';

// My App imports
import 'package:e_commerce_headphones/ui/components/headphone.dart';
import 'package:e_commerce_headphones/ui/components/headphone_list.dart';

class HomeTab extends StatefulWidget {
  HomeTab({@required Key key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<HeadPhone> headPhoneList = [
    HeadPhone(
      image: 'assets/images/beats_yellow.png',
      category: 'Beats Solo',
      name: 'Club Yellow',
      price: '\$199',
      inStockCount: 3,
    ),
    HeadPhone(
      image: 'assets/images/beats_red.png',
      category: 'Beats Solo',
      name: 'Power Beats',
      price: '\$249.95',
      inStockCount: 3,
      backgroundColor: Colors.red,
    ),
    HeadPhone(
      image: 'assets/images/beats_yellow.png',
      category: 'Beats Solo',
      name: 'Club Yellow',
      price: '\$199',
      inStockCount: 3,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24),
      child: Column(
        children: <Widget>[
          DottedTitle(
            title: 'Headphones',
          ),
          HeadPhoneList(
            headPhoneList: this.headPhoneList,
            onItemSelected: (position) => print(position),
          ),
          DottedTitle(
            title: 'Earphones',
          ),
        ],
      ),
    );
  }
}
