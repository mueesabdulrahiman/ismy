import 'package:flutter/material.dart';

Widget seperator() {
  return Column(
    children: const [
      SizedBox(
        height: 10,
      ),
      Divider(
        color: Colors.grey,
      ),
      SizedBox(
        height: 10,
      ),
    ],
  );
}
