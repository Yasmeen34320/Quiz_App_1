import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/LoginScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class ScoreScreen extends StatelessWidget {
  final int? Score, idx;
  const ScoreScreen({super.key, this.Score, this.idx});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(246, 241, 248, 1),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: screenSize.height * 1 / 3,
              ),
              RichText(
                text: TextSpan(
                  text: 'Hello,', // lancelot
                  style: GoogleFonts.lancelot(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '${username.text}',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Color.fromRGBO(126, 87, 194, 1),
                        decorationThickness: 2.0,
                        fontSize: 40,
                        color: Color.fromRGBO(126, 87, 194, 1),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: "Your Score is ${Score!} / ${idx! + 1}",
                  style: GoogleFonts.lancelot(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * 1 / 4,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    'Rest Quiz',
                    style: GoogleFonts.lancelot(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(126, 87, 194, 1)),
                    minimumSize: MaterialStateProperty.all<Size>(Size(
                        screenSize.width, screenSize.height * (1 / 8) - 16)),
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
      ),
    );
  }
}
