// Flutter imports
import 'package:flutter/material.dart';

// My App imports
import 'package:e_commerce_headphones/ui/icons/custom_bell_icon.dart';
import 'package:e_commerce_headphones/ui/icons/custom_envelope_icon.dart';
import 'package:e_commerce_headphones/ui/icons/custom_heart_icon.dart';
import 'package:e_commerce_headphones/ui/icons/custom_home_icon.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            child: Row(
              children: <Widget>[
                Icon(
                  CustomHomeIcon.home,
                  color: Colors.grey.shade800,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    'Home',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey.shade800),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(40)),
          ),
          Icon(
            CustomHeartIcon.heart,
            color: Colors.white,
          ),
          Icon(
            CustomEnvelopeIcon.envelope,
            color: Colors.white,
          ),
          Icon(
            CustomBellIcon.notification,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
