import 'package:flutter/material.dart';

import 'Screens/Categories.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/OpenningScreen.dart';
import 'Screens/QuestionScreen.dart';
import 'Screens/ScoreScreen.dart';

void main() {
  runApp(const OurQuizzApp());
}

class OurQuizzApp extends StatelessWidget {
  const OurQuizzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OpenningScreen(),
    );
  }
}
