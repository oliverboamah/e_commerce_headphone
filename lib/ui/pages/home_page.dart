// Flutter imports
import 'package:e_commerce_headphones/ui/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// My App imports
import 'package:e_commerce_headphones/ui/layouts/bottom_navbar.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Homepage'),
      ),
      backgroundColor: PRIMARY_COLOR,
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
