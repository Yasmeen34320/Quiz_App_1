import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/QuestionScreen.dart';

class Category_Container extends StatelessWidget {
  final String? Testname;
  final Color? Container_Color;
  final List? question;
  const Category_Container({this.Testname, this.Container_Color,this.question});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuestionScreen(TestName:Testname ,Question: question,)),
            );
          },
          child: Text(
            Testname!,
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 35.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                //
                Container_Color!),
            minimumSize: MaterialStateProperty.all<Size>(
                Size(screenSize.width, screenSize.height * (1 / 3) - 16)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28.0),
              ),
            ),
            elevation: MaterialStateProperty.all<double>(8),
          ),
        ),
      ),
    );
  }
}
