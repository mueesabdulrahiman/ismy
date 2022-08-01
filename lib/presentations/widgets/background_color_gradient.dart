import 'package:flutter/material.dart';

LinearGradient backgroundColour() {
    return  const LinearGradient(
            colors: [
              Colors.blue,
              Colors.deepPurple,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          );
  }