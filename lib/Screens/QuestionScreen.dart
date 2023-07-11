import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/ScoreScreen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'OpenningScreen.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: screenSize.width,
              height: screenSize.height * (1 / 8),
              child: AppBar(
                backgroundColor: const Color.fromRGBO(126, 87, 194, 1),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                title: Text(
                  'General Test',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 24.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: <Widget>[
                  IconButton(
                    icon: SizedBox(
                      width: 100.0,
                      height: 100.0,
                      child: Image.asset(
                        'assets/images/logo.png',
                        fit: BoxFit.contain,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OpenningScreen()),
                      );
                    },
                    iconSize: 80.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * 1 / 15,
            ),
            Container(
              width: screenSize.width - 17,
              height: screenSize.height * 1 / 6,
              child: Card(
                color: Color.fromRGBO(246, 241, 248, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.0),
                ),
                elevation: 8.0,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Question 1',
                        style: GoogleFonts.pacifico(
                          fontSize: 25,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                          decorationThickness: 2.0,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'What is the capital of France?',
                        style: GoogleFonts.pacifico(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * 1 / 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Choices is :",
                  style: GoogleFonts.pacifico(
                    fontSize: 20,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ScoreScreen()),
                      );
                },
                child: Text(
                  'Paris ',
                  style: GoogleFonts.pacifico(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(246, 241, 248, 1)),
                  minimumSize: MaterialStateProperty.all<Size>(
                      Size(screenSize.width, screenSize.height * (1 / 12))),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.0),
                    ),
                  ),
                  elevation: MaterialStateProperty.all<double>(8),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ScoreScreen()),
                      );
                },
                child: Text(
                  'London ',
                  style: GoogleFonts.pacifico(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(246, 241, 248, 1)),
                  minimumSize: MaterialStateProperty.all<Size>(
                      Size(screenSize.width, screenSize.height * (1 / 12))),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.0),
                    ),
                  ),
                  elevation: MaterialStateProperty.all<double>(8),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ScoreScreen()),
                      );
                },
                child: Text(
                  'Moscow ',
                  style: GoogleFonts.pacifico(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(246, 241, 248, 1)),
                  minimumSize: MaterialStateProperty.all<Size>(
                      Size(screenSize.width, screenSize.height * (1 / 12))),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.0),
                    ),
                  ),
                  elevation: MaterialStateProperty.all<double>(8),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ScoreScreen()),
                      );
                },
                child: Text(
                  'Rome ',
                  style: GoogleFonts.pacifico(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(246, 241, 248, 1)),
                  minimumSize: MaterialStateProperty.all<Size>(
                      Size(screenSize.width, screenSize.height * (1 / 12))),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.0),
                    ),
                  ),
                  elevation: MaterialStateProperty.all<double>(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
