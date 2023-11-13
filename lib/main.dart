import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 214, 213, 216),
            Color.fromARGB(255, 141, 212, 8)
          ],
          positions: [
          Alignment.bottomRight, 
          Alignment.bottomLeft
          ],
        ),
      ),
    ),
  );
}
