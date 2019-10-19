// Flutter imports
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// My App imports
import 'package:e_commerce_headphones/ui/components/headphone.dart';
import 'package:e_commerce_headphones/ui/holders/headphone_data.dart';

class HeadPhoneList extends StatefulWidget {
  final List<HeadphoneData> headPhoneList;
  final Function onItemSelected;

  HeadPhoneList({@required this.headPhoneList, @required this.onItemSelected});

  @override
  State<HeadPhoneList> createState() => _HeadPhoneListState();
}

class _HeadPhoneListState extends State<HeadPhoneList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int position) {
          return InkWell(
            child: HeadPhone(
              headphoneData: this.widget.headPhoneList[position],
            ),
            onTap: () => this.widget.onItemSelected(position),
          );
        },
        itemCount: this.widget.headPhoneList.length,
      ),
    );
  }
}
