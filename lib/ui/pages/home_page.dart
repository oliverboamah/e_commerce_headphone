// Flutter imports
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// My App imports
import 'package:e_commerce_headphones/ui/layouts/bottom_navbar.dart';
import 'package:e_commerce_headphones/ui/values/colors.dart';
import 'package:e_commerce_headphones/ui/tabs/home_tab.dart';

class HomePage extends StatefulWidget {
  // page storage bucket for tabs
  final _pageStorageBucket = PageStorageBucket();

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // selected tab index
  int selectedTabIndex = 0;

  // tabs
  var tabs = [
    HomeTab(
      key: PageStorageKey('HomeTab'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: this.tabs[this.selectedTabIndex],
        bucket: this.widget._pageStorageBucket,
      ),
      backgroundColor: PRIMARY_COLOR,
      bottomNavigationBar: BottomNavBar(
        onItemSelected: (index) => print(index),
        notificationsCount: 3,
      ),
    );
  }
}
