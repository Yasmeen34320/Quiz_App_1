import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/LoginScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class OpenningScreen extends StatelessWidget {
  const OpenningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/3.jpg'), fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 1 / 8,
            ),
            Image.asset(
              "assets/images/logo.png",
              width: 250,
              height: 250,
            ),
            Text(
              "ITI Quiz App",
              style: GoogleFonts.pacifico(
                fontSize: 34,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1 / 8,
            ),
            Text(
              "We Are Creative, enjoy our App",
              style: GoogleFonts.pacifico(
                fontSize: 20, 
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                height: 40, 
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // background color
                      onPrimary: Colors.white, // text color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20), // rounded corners
                      ),
                    ),
                    child: Text(
                      "Start",
                      style: GoogleFonts.pacifico(
                        fontSize: 20,
                      ), 
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
