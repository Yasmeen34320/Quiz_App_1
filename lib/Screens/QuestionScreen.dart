import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/ScoreScreen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Global/global.dart';

import 'OpenningScreen.dart';

class QuestionScreen extends StatefulWidget {
  final String? TestName;
  final List? Question;
  QuestionScreen({super.key, this.Question, this.TestName});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int index = 0, score = 0;
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
                leadingWidth: 100,
                backgroundColor: const Color.fromRGBO(126, 87, 194, 1),
                leading: Center(
                  child: Text(
                    widget.TestName!,
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 17.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: Center(
                  child: Column(
                    children: [
                      const Text(
                        'Question NO',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 17.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${index + 1}/${widget.Question!.length}",
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 17.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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
                        MaterialPageRoute(
                            builder: (context) => const OpenningScreen()),
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
              height: screenSize.height * 1 / 5 + 34,
              child: Card(
                color: const Color.fromRGBO(246, 241, 248, 1),
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
                        "Question ${index + 1}",
                        style: GoogleFonts.pacifico(
                          fontSize: 25,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                          decorationThickness: 2.0,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        widget.Question![index]["question"],
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
            for (int i = 0;
                i < (widget.Question![index]["options"] as List).length;
                i++)
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    score = score +
                        int.parse(
                            widget.Question![index]["options"][i]["Score"]);

                    if (index == widget.Question!.length - 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScoreScreen(
                                  Score: score,
                                  idx: index,
                                )),
                      );
                    } else {
                      setState(() {
                        index++;
                      });
                    }
                  },
                  child: Text(
                    widget.Question![index]["options"][i]["ans"],
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
