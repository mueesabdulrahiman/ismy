import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({Key? key, required this.icon, this.onPress, required this.colour })
      : super(key: key);

  final IconData icon;
  final Color colour;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress!();
      },
      child: Icon(
        icon,
        size: 25,
        color: colour,
      ),
    );
  }
}
