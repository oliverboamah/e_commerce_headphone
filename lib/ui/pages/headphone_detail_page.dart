import 'package:e_commerce_headphones/ui/components/suggested_headphone_list.dart';
import 'package:e_commerce_headphones/ui/holders/headphone_data.dart';
import 'package:e_commerce_headphones/ui/layouts/headphone_detail_app_bar.dart';
import 'package:e_commerce_headphones/ui/routes/routes.dart';
import 'package:e_commerce_headphones/ui/values/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeadphoneDetailPage extends StatefulWidget {
  final HeadphoneData headphoneData;

  HeadphoneDetailPage({@required this.headphoneData});

  @override
  State<StatefulWidget> createState() => _HeadphoneDetailPageState();
}

class _HeadphoneDetailPageState extends State<HeadphoneDetailPage> {
  // headphone data list
  List<HeadphoneData> headPhoneDataList = [
    HeadphoneData(
        image: 'assets/images/beats_yellow.png',
        category: 'Beats Solo',
        name: 'Club Yellow',
        price: '\$199',
        inStockCount: 3,
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
        backgroundColor: Color(0xff6582e6))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeadphoneDetailAppBar().getAppBar(context),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/beats_yellow.png',
              width: 250,
              height: 250,
            ),
            decoration: BoxDecoration(
                color: PRIMARY_COLOR,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
          ),
          Container(
            padding: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Club Yellow',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'RaleWay',
                            fontSize: 24),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40.0),
                      child: Text(
                        r'$199',
                        style: TextStyle(fontFamily: 'RaleWay', fontSize: 24),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            CupertinoIcons.check_mark,
                            color: ACCENT_COLOR,
                            size: 30,
                          ),
                          Text(
                            'With Fast Fuel, 5 minutes of charging 3 hours',
                            style: TextStyle(fontFamily: 'RaleWay'),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            CupertinoIcons.check_mark,
                            color: ACCENT_COLOR,
                            size: 30,
                          ),
                          Text(
                            'Up to 40 hours listening time',
                            style: TextStyle(fontFamily: 'RaleWay'),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            CupertinoIcons.check_mark,
                            color: ACCENT_COLOR,
                            size: 30,
                          ),
                          Text(
                            'Apple W1 Chip & Class 1 Wireless Bluetooth',
                            style: TextStyle(fontFamily: 'RaleWay'),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            CupertinoIcons.check_mark,
                            color: ACCENT_COLOR,
                            size: 30,
                          ),
                          Text(
                            'A clear Sound producer like Lorelei',
                            style: TextStyle(fontFamily: 'RaleWay'),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            color: PRIMARY_COLOR,
            child: Container(
              height: 20,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
            ),
          ),
          Expanded(
            child: Container(
              color: PRIMARY_COLOR,
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: SuggestedHeadPhoneList(
                        headPhoneList: this.headPhoneDataList,
                        onItemSelected: () => {},
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: FlatButton(
                      color: ACCENT_COLOR,
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                      child: Text('Add to Bag'),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 50.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: FloatingActionButton(
            backgroundColor: Color(0xfff33e54),
            child: Icon(Icons.favorite),
            onPressed: () => {},
          ),
        ),
      ),
    );
  }
}
