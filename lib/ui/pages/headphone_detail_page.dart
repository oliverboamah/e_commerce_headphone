import 'package:e_commerce_headphones/ui/holders/headphone_data.dart';
import 'package:e_commerce_headphones/ui/layouts/product_detail_app_bar.dart';
import 'package:flutter/material.dart';

class HeadphoneDetailPage extends StatefulWidget {

  final HeadphoneData headphoneData;

  HeadphoneDetailPage({@required this.headphoneData});

  @override
  State<StatefulWidget> createState() => _HeadphoneDetailPageState();
}

class _HeadphoneDetailPageState extends State<HeadphoneDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProductDetailAppBar().getAppBar(context),
      body: Center(
        child: Text('Headphone Detail Page!'),
      ),
    );
  }
}
