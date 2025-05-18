import 'dart:math';
import 'package:dice_app/styles/text_style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var leftDice = 1;
  var rightDice = 3;
  final random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(child: Text('Dicee', style: TextStyles.heading)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GestureDetector(
          onTap: () {
            var leftDice1 = random.nextInt(5) + 1;
            var leftDice2 = random.nextInt(5) + 1;
            setState(() {
              leftDice = leftDice1;
              rightDice = leftDice2;
            });
          },
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(30),
                    elevation: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.green,
                      ),
                      height: 180,
                      width: 100,

                      child: Image.asset(
                        'assets/images/${leftDice}-removebg-preview.png',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Material(
                    elevation: 10,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.green,
                      ),
                      height: 180,
                      width: 100,

                      child: Image.asset(
                        'assets/images/${rightDice}-removebg-preview.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
