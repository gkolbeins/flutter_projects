import 'package:flutter/material.dart';
import 'package:roll_dice_ghk/gradient_container.dart';

void main() {
  runApp(
    const  MaterialApp(
      home: Scaffold(
        body: GradientContainer(
           Color.fromARGB(255, 1, 58, 61),
           Color.fromARGB(255, 128, 225, 230)
        ),
      ),
    ),
  );
}

