// flutter imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// my app imports
import 'package:e_commerce_headphones/ui/components/headphone_bullet_point.dart';
import 'package:e_commerce_headphones/ui/components/suggested_headphone_list.dart';
import 'package:e_commerce_headphones/ui/holders/headphone_data.dart';
import 'package:e_commerce_headphones/ui/layouts/headphone_detail_app_bar.dart';
import 'package:e_commerce_headphones/ui/values/colors.dart';

class HeadphoneDetailPage extends StatefulWidget {
  final List<HeadphoneData> headphoneDataList;
  HeadphoneDetailPage({@required this.headphoneDataList});

  @override
  State<StatefulWidget> createState() => _HeadphoneDetailPageState();
}

class _HeadphoneDetailPageState extends State<HeadphoneDetailPage> {
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
                      HeadphoneBulletPoint(
                        text: 'With Fast Fuel, 5 minutes of charging 3 hours',
                      ),
                      HeadphoneBulletPoint(
                        text: 'Up to 40 hours listening time',
                      ),
                      HeadphoneBulletPoint(
                        text: 'Apple W1 Chip & Class 1 Wireless Bluetooth',
                      ),
                      HeadphoneBulletPoint(
                        text: 'A clear Sound producer like Lorelei',
                      ),
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
                        headPhoneList: this.widget.headphoneDataList,
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
