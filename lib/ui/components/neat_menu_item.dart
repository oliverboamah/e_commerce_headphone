// Flutter imports
import 'package:flutter/widgets.dart';

class NeatMenuItem {
  final IconData icon;
  final String title;
  final bool showBadge;
  final int badgeValue;

  NeatMenuItem(
      {@required this.icon,
      this.title,
      this.showBadge = false,
      this.badgeValue = 0});
}
