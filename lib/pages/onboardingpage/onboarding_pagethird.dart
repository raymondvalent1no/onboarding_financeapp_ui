import 'package:financeapp_onboarding_ui/pages/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:financeapp_onboarding_ui/theme.dart';

class OnboardingPageThird extends StatefulWidget {
  const OnboardingPageThird({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPageThird> {
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
                  Image.asset('assets/download.png', width: 294, height: 220),
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
                          'Download Easily',
                          style: titleStyle,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Keep the report as offline mode\n and use it anywhere you want',
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
                  'assets/prog_download.png',
                  width: 71,
                  height: 38,
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homepage()),
                      );
                    },
                    child: Center(
                      child: Text('Get Started',
                          style: TextStyle(color: Colors.black)),
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
