import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/profil_pic.png',
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Sabrina Carpenter',
                style: TextStyle(
                  fontSize: 20,
                  color: whiteColor,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Travel Freelancer',
                style: TextStyle(
                  fontSize: 16,
                  color: lightBlueColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
