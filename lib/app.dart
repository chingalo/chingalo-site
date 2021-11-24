import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chingalo",
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
        primaryColor: const Color(0xFF4B9F46),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(
        child: Scaffold(
          body: Container(
            alignment: Alignment.center,
            child: const Text("Text enter"),
          ),
        ),
      ),
    );
  }
}
