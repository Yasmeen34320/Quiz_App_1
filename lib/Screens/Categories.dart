import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'QuestionScreen.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
               Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QuestionScreen()),
                      );
            },
            child: Text(
              'Sport Test',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 35.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromRGBO(126, 87, 194, 1)),
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
               Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QuestionScreen()),
                      );
            },
            child: Text(
              'History Test',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 35.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromRGBO(126, 87, 194, 1)),
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
               Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QuestionScreen()),
                      );
            },
            child: Text(
              'General Test',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 35.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromRGBO(126, 87, 194, 1)),
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
      ]),
    ));
  }
}
