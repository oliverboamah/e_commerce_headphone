// flutter package imports
import 'package:flutter/material.dart';

// third party package imports
import 'package:shared_preferences/shared_preferences.dart';

// my package imports
import 'package:e_commerce_headphones/ui/components/neat_menu_item.dart';

class NeatNavDrawer extends StatefulWidget {
  final List<NeatMenuItem> menuItems;
  final Color menuItemColor;
  final Color selectedMenuItemColor;
  final bool showCloseIcon;
  final Color closeIconColor;
  final Color drawerBackgroundColor;
  final Function onMenuItemClicked;

  // key to store and retrieve selectedMenuItem in shared prefs
  final selectedMenuItemKey = '@key:selectedMenuItem';

  NeatNavDrawer({
    @required this.menuItems,
    @required this.drawerBackgroundColor,
    @required this.onMenuItemClicked,
    this.menuItemColor = Colors.white,
    this.selectedMenuItemColor = Colors.amber,
    this.showCloseIcon = true,
    this.closeIconColor = Colors.white,
  });

  @override
  State<StatefulWidget> createState() => _NeatNavDrawerState();
}

class _NeatNavDrawerState extends State<NeatNavDrawer> {
  String selectedMenuItem = '';

  @override
  void initState() {
    super.initState();
    this._loadState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Drawer(
        child: Container(
          child: Text('Nav Drawer'),
        ),
      ),
    );
  }

  // save selectedMenuItemTitle state
  void _saveState(String selectedMenuItem) {
    SharedPreferences.getInstance().then((prefs) {
      prefs.setString(this.widget.selectedMenuItemKey, selectedMenuItem);
    }).catchError((onError) {
      print(onError);
    });
  }

  // load selectedMenuItemTitle state
  void _loadState() {
    SharedPreferences.getInstance().then((prefs) {
      final value = prefs.getString(this.widget.selectedMenuItemKey);
      if (value != null) {
        this.setState(() => this.selectedMenuItem = value);
      }
    }).catchError((onError) {
      print(onError);
    });
  }
}
