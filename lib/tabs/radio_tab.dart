import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/radio_image.png"),
          const SizedBox(
            height: 55,
          ),
          const Text(
            "إذاعة القرآن الكريم",
            style: TextStyle(color: Colors.black),
          ),
          const SizedBox(
            height: 65,
          ),
          Image.asset("assets/images/Group 5.png"),
        ],
      ),
    );
  }
}
