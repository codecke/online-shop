import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class BottomNavWidget extends StatelessWidget {
  final IconData iconData;
  final void Function()? onTap;
  const BottomNavWidget({super.key, required this.iconData, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 36,
        width: 36,
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}
