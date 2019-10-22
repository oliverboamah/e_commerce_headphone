// flutter imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// my app imports
import 'package:e_commerce_headphones/ui/values/colors.dart';
import 'package:e_commerce_headphones/ui/icons/custom_search_icon.dart';

class MyAppBar {
  final Function onDashboardIconClicked;

  MyAppBar({@required this.onDashboardIconClicked});

  getAppBar() {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: InkWell(
          child: Icon(
            Icons.dashboard,
            color: PRIMARY_COLOR,
          ),
          onTap: () => this.onDashboardIconClicked(),
        ),
      ),
      elevation: 0.0,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 24.0),
          child: Icon(
            CustomSearchIcon.search,
            color: Colors.grey,
          ),
        )
      ],
      backgroundColor: Colors.white,
    );
  }
}
