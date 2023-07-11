import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/Categories.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),
        SizedBox(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/9.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: 30.0,
          left: 24,
          child: Text(
            'Quiz',
            style: GoogleFonts.pacifico(
              textStyle: TextStyle(
                fontSize: 35.0,
                color: Color.fromRGBO(126, 87, 194, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          left: 10,
          right: 10,
          bottom: 15,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(238, 238, 238, 1),
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 10.0,
                  blurRadius: 10.0,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Login',
                    style: GoogleFonts.pacifico(
                      textStyle: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 20.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Username',
                      prefixIcon: const Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: const Icon(Icons.lock),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 20.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 2.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'New to Quiz?',
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Color.fromRGBO(211, 207, 200, 1)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Register?',
                        style: TextStyle(
                            fontSize: 15.0,
                            decoration: TextDecoration.underline,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Categories()),
                      );
                    },
                    child: const Text('Login',
                        style: TextStyle(
                          fontSize: 20.0,
                        )),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      fixedSize: const Size(200.0, 50.0),
                    ),
                  ),
                  const SizedBox(height: 2.0),
                  Icon(
                    Icons.fingerprint,
                    size: 48.0,
                    color: Colors.blue[700],
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    'Use Touch Id',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.check_box_outlined,
                        size: 15.0,
                        color: Colors.grey[600],
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        'Remember Me',
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                      const SizedBox(
                        width: 105.0,
                      ),
                      Text(
                        'Forget Password?',
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
