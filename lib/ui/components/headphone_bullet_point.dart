// flutter imports
import 'package:flutter/cupertino.dart';

// my app imports
import 'package:e_commerce_headphones/ui/values/colors.dart';

class HeadphoneBulletPoint extends StatelessWidget {
  final String text;

  HeadphoneBulletPoint({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          CupertinoIcons.check_mark,
          color: ACCENT_COLOR,
          size: 30,
        ),
        Text(
          this.text,
          style: TextStyle(fontFamily: 'RaleWay'),
        )
      ],
    );
  }
}
