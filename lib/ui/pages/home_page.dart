// Flutter imports
import 'package:e_commerce_headphones/ui/icons/custom_bell_icon.dart';
import 'package:e_commerce_headphones/ui/icons/custom_heart_icon.dart';
import 'package:e_commerce_headphones/ui/icons/custom_home_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// My App imports
import 'package:e_commerce_headphones/ui/layouts/bottom_navbar.dart';
import 'package:e_commerce_headphones/ui/tabs/home_tab.dart';
import 'package:e_commerce_headphones/ui/layouts/app_bar.dart';
import 'package:e_commerce_headphones/ui/layouts/neat_nav_drawer.dart';
import 'package:e_commerce_headphones/ui/components/neat_menu_item.dart';
import 'package:e_commerce_headphones/ui/values/colors.dart';

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

  // access to scaffold state
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  // nav drawer menu items
  List<NeatMenuItem> menuItems = [
    NeatMenuItem(icon: CupertinoIcons.home, title: 'Home'),
    NeatMenuItem(
      icon: CupertinoIcons.shopping_cart,
      title: 'Shopping Cart',
      showBadge: true,
      badgeValue: 3,
    ),
    NeatMenuItem(icon: CupertinoIcons.heart, title: 'Favorites'),
    NeatMenuItem(icon: CupertinoIcons.bell, title: 'Notification'),
    NeatMenuItem(icon: CupertinoIcons.mail, title: 'Messages'),
    NeatMenuItem(icon: CupertinoIcons.settings, title: 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: this._drawerKey,
      appBar: MyAppBar(
          onDashboardIconClicked: () =>
              this._drawerKey.currentState.openDrawer()).getAppBar(),
      body: PageStorage(
        child: this.tabs[this.selectedTabIndex],
        bucket: this.widget._pageStorageBucket,
      ),
      drawer: NeatNavDrawer(
        menuItems: this.menuItems,
        selectedMenuItemColor: ACCENT_COLOR,
        //  closeIconColor: null,
        drawerBackgroundColor: PRIMARY_COLOR,
        onMenuItemClicked: (title) => print(title),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavBar(
        onItemSelected: (index) => print(index),
        notificationsCount: 3,
      ),
    );
  }
}
