import 'package:e_commerce_headphones/ui/components/earphone.dart';
import 'package:e_commerce_headphones/ui/holders/earphone_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EarphoneList extends StatefulWidget {
  final List<EarphoneData> earphoneDataList;
  final Function onItemSelected;

  EarphoneList({@required this.earphoneDataList, this.onItemSelected});

  @override
  State<StatefulWidget> createState() => _EarphoneListState();
}

class _EarphoneListState extends State<EarphoneList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int position) {
          return InkWell(
            child: Earphone(
              earphoneData: this.widget.earphoneDataList[position],
            ),
            onTap: () => this.widget.onItemSelected(position),
          );
        },
        itemCount: this.widget.earphoneDataList.length,
      ),
    );
    
  }
}
