import 'package:flutter/material.dart';
import 'package:flutter_food_fast_app/views/show_all_food_ui.dart';

class SolashscreenUi extends StatefulWidget {
  const SolashscreenUi({super.key});

  @override
  State<SolashscreenUi> createState() => _SolashscreenUiState();
}

class _SolashscreenUiState extends State<SolashscreenUi> {
  @override
  void initState() {
    super.initState(); // เรียกก่อนเสมอ

    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => ShowAllFoodUi(),
          ),
          (route) => false, // ต้องใส่เงื่อนไขลบ route ออก
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/fastfood.png',
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.5,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'สายด่วนชวนชิม',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(
              color: Colors.yellow[800],
            ),
            SizedBox(height: 20),
            Text(
              'Created by Teerawut SAU',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Copyright © 2023',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
