import 'package:flutter/material.dart';

class NameContainer extends StatelessWidget {
  const NameContainer({
    Key? key,
    required this.label,
    required this.size,
    required this.color,
    required this.labelColor,
  }) : super(key: key);
  final String label;
  final double size;
  final Color color;
  final Color labelColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(50)),
      child: Text(
        label,
        style: TextStyle(
            color: labelColor, fontSize: size, fontWeight: FontWeight.bold),
      ),
    );
  }

  
}
