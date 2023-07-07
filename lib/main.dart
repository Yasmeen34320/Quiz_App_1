import 'package:flutter/material.dart';

import 'Screens/openning_screen.dart';

void main() {
  runApp(const OurQuizzApp());
}

class OurQuizzApp extends StatelessWidget {
  const OurQuizzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OpeningScreen(),
    );
  }
}
