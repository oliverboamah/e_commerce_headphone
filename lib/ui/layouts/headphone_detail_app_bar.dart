// flutter imports
import 'package:e_commerce_headphones/ui/values/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeadphoneDetailAppBar {
  AppBar getAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(CupertinoIcons.back),
        onPressed: () => Navigator.of(context).pop(),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.more_vert,
            size: 30,
          ),
          onPressed: () {},
        )
      ],
      elevation: 0.0,
      backgroundColor: PRIMARY_COLOR,
    );
  }
}
