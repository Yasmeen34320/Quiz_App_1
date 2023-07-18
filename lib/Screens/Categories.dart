import 'package:flutter/material.dart';
import 'package:flutter_application_2/Global/global.dart';
import 'package:google_fonts/google_fonts.dart';
import '/Global/global.dart';

import '../shared/Category_Container.dart';
import 'QuestionScreen.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(children: [
        Category_Container(
          Testname: "Sports Test",
          Container_Color: const Color.fromRGBO(126, 87, 194, 1),
          question: SportsTest,
        ),
        Category_Container(
          Testname: "History Test",
          question: HistoryTest,
          Container_Color: const Color.fromRGBO(126, 87, 194, 1),
        ),
        Category_Container(
          Testname: "General Test",
          Container_Color: const Color.fromRGBO(126, 87, 194, 1),
          question: GeneralTest,
        ),
      ]),
    );
  }
}
