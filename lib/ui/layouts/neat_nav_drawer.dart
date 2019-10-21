// flutter package imports
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// third party package imports
import 'package:shared_preferences/shared_preferences.dart';

// my package imports
import 'package:e_commerce_headphones/ui/components/neat_menu_item.dart';

class NeatNavDrawer extends StatefulWidget {
  final List<NeatMenuItem> menuItems;
  final Color menuItemColor;
  final Color selectedMenuItemColor;
  final Color closeIconColor;
  final Color menuTitleColor;
  final Color drawerBackgroundColor;
  final Function onMenuItemClicked;

  // key to store and retrieve selectedMenuItem in shared prefs
  final selectedMenuItemKey = '@key:selectedMenuItem';

  NeatNavDrawer(
      {@required this.menuItems,
      @required this.drawerBackgroundColor,
      @required this.onMenuItemClicked,
      this.menuItemColor = Colors.white,
      this.selectedMenuItemColor = Colors.amber,
      this.closeIconColor = Colors.white,
      this.menuTitleColor = Colors.white});

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
            color: this.widget.drawerBackgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        bottom: 32,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.close,
                          color: this.widget.closeIconColor,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 32, bottom: 24),
                      child: Text(
                        'Menu',
                        style: TextStyle(
                            color: this.widget.menuTitleColor,
                            fontSize: 22,
                           fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: ListView(
                    children: this._getMenuItems(),
                  ),
                ))
              ],
            ),
          ),
        ));
  }

  // generate list of menu items
  List<Widget> _getMenuItems() {
    return this.widget.menuItems.map((menuItem) {
      Color color = this.selectedMenuItem != menuItem.title
          ? this.widget.menuItemColor
          : this.widget.selectedMenuItemColor;

      return InkWell(
        child: ListTile(
          leading: Badge(
            child: Icon(
              menuItem.icon,
              color: color,
            ),
            badgeContent: Text('${menuItem.badgeValue}'),
            showBadge: menuItem.showBadge,
            badgeColor: this.widget.selectedMenuItemColor,
            position: BadgePosition.topLeft(top: -10, left: -3),
          ),
          title: Text(
            menuItem.title,
            style: TextStyle(color: color, fontFamily: 'Raleway'
            ),
          ),
        ),
        onTap: () => _onMenuItemClicked(menuItem.title),
      );
    }).toList();
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

  // menu item clicked
  _onMenuItemClicked(String title) {
    this.setState(() => this.selectedMenuItem = title);
    this.widget.onMenuItemClicked(title);
    this._saveState(title);
  }
}
