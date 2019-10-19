// Flutter imports
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// My App imports
import 'package:e_commerce_headphones/ui/components/headphone.dart';

class HeadPhoneList extends StatefulWidget {
  final List<HeadPhone> headPhoneList;
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
          HeadPhone headPhone = this.widget.headPhoneList[position];

          return InkWell(
            child: HeadPhone(
              image: headPhone.image,
              category: headPhone.category,
              name: headPhone.name,
              price: headPhone.price,
              inStockCount: headPhone.inStockCount,
              backgroundColor: headPhone.backgroundColor,
            ),
            onTap: () => this.widget.onItemSelected(position),
          );
        },
        itemCount: 3,
      ),
    );
  }
}
