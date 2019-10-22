// Flutter imports
import 'package:e_commerce_headphones/ui/components/suggested_headphone.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// My App imports
import 'package:e_commerce_headphones/ui/holders/headphone_data.dart';

class SuggestedHeadPhoneList extends StatefulWidget {
  final List<HeadphoneData> headPhoneList;
  final Function onItemSelected;

  SuggestedHeadPhoneList({@required this.headPhoneList, @required this.onItemSelected});

  @override
  State<SuggestedHeadPhoneList> createState() => _SuggestedHeadPhoneListState();
}

class _SuggestedHeadPhoneListState extends State<SuggestedHeadPhoneList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int position) {
          return InkWell(
            child: SuggestedHeadphone(
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
