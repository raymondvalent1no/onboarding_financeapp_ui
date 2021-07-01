import 'package:financeapp_onboarding_ui/pages/onboardingpage/onboarding_pagesecond.dart';
import 'package:flutter/material.dart';
import 'package:financeapp_onboarding_ui/theme.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
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
                  Image.asset('assets/integrate.png', width: 294, height: 220),
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
                          'Integrate Quickly',
                          style: titleStyle,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Sign up with your account and get full features',
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
                  'assets/prog_integrate.png',
                  width: 71,
                  height: 38,
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OnboardingPageSecond()),
                      );
                    },
                    child: Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
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
