import 'package:flutter/material.dart';
import 'package:flutter_food_fast_app/views/solashscreen_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    FlutterFoodFastApp(),
  );
}

class FlutterFoodFastApp extends StatefulWidget {
  const FlutterFoodFastApp({super.key});

  @override
  State<FlutterFoodFastApp> createState() => _FlutterFoodFastAppState();
}

class _FlutterFoodFastAppState extends State<FlutterFoodFastApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SolashscreenUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.procionoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
