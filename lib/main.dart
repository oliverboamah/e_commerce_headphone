// flutter imports
import 'package:flutter/material.dart';

// my app imports
import 'package:e_commerce_headphones/env.dart';
import 'package:e_commerce_headphones/ui/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_NAME,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
