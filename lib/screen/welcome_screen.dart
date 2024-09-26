import 'dart:async';

import 'package:flutter/material.dart';
import 'package:we_clothes/screen/home_screen.dart';
import 'package:we_clothes/screen/onBoarding_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  void initState(){
    super.initState();
    Timer(
      const Duration(seconds: 4),
          () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OnboardingScrenn(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage("images/image2.jpg"),
                  fit: BoxFit.cover,
                  opacity: 0.4
              )
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_cart,
                size: 200,
                color: Color(0xFFFE6969),
              ),
              Text(
                "We Clothes",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic
                ),
              )
            ],
          )
      ),
    );
  }
}

