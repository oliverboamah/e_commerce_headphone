// Flutter imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// My App imports
import 'package:e_commerce_headphones/ui/layouts/bottom_navbar.dart';
import 'package:e_commerce_headphones/ui/tabs/home_tab.dart';
import 'package:e_commerce_headphones/ui/layouts/app_bar.dart';
import 'package:e_commerce_headphones/ui/layouts/neat_nav_drawer.dart';

class HomePage extends StatefulWidget {
  // page storage bucket for tabs
  final _pageStorageBucket = PageStorageBucket();

  // access to scaffold state
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

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
      key: this.widget._drawerKey,
      appBar: MyAppBar(
          onDashboardIconClicked: () =>
              this.widget._drawerKey.currentState.openDrawer()).getAppBar(),
      body: PageStorage(
        child: this.tabs[this.selectedTabIndex],
        bucket: this.widget._pageStorageBucket,
      ),
      drawer: NeatNavDrawer(
        menuItems: null,
        menuItemColor: null,
        selectedMenuItemColor: null,
        showCloseIcon: null,
        closeIconColor: null,
        drawerBackgroundColor: null,
        onMenuItemClicked: null,
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavBar(
        onItemSelected: (index) => print(index),
        notificationsCount: 3,
      ),
    );
  }
}
