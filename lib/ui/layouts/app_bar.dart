// Flutter imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// My App imports
import 'package:e_commerce_headphones/ui/values/colors.dart';

getAppBar() {
  return AppBar(
    leading: Icon(
      Icons.menu,
      color: PRIMARY_COLOR,
    ),
    elevation: 0.0,
    actions: <Widget>[
      Icon(
        CupertinoIcons.search,
        color: Colors.grey.shade800,
      )
    ],
    backgroundColor: Colors.white,
  );
}
