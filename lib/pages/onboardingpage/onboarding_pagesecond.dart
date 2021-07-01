import 'package:financeapp_onboarding_ui/pages/onboardingpage/onboarding_pagethird.dart';
import 'package:flutter/material.dart';
import 'package:financeapp_onboarding_ui/theme.dart';

class OnboardingPageSecond extends StatefulWidget {
  const OnboardingPageSecond({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPageSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 91),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child:
                  Image.asset('assets/viewreport.png', width: 294, height: 220),
            ),
            SizedBox(height: 76),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'View Report',
                          style: titleStyle,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Get the data that you need\n and convert it to revenue',
                          style: subtitleStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 215),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/prog_viewreport.png',
                  width: 71,
                  height: 38,
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OnboardingPageThird()),
                      );
                    },
                    child: Center(
                      child: Text('Continue',
                          style: TextStyle(
                            color: Colors.black,
                          )),
                    ),
                  ),
                  width: 160,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: buttonColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
