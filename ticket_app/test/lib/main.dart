import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/LogiinScreens/scrat.dart';
import 'screens/LogiinScreens/signin.dart';
import 'screens/main_home_page.dart';
import 'screens/movie_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans().fontFamily,
      ),
      home: SignInScreen(),
    );
  }
}
