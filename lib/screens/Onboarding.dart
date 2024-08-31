import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/dashboard_screen.dart';
import 'package:flutter_application_1/widgets/constant.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTherdColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/waffles.png',
              fit: BoxFit.fill,
              height: 476,
            ),
            const SizedBox(height: 20),
            const Text(
              'Fall in Love with',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Coffee in Blissful',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Delight!',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Welcome to our cozy coffee corner, where every cup is a delightful for you.',
                style: TextStyle(
                  fontSize: 17,
                  color: ktextColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 23),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const DashboardScreen();
                }));
              },
              child: Container(
                height: 50,
                width: 355,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kprimaryColor,
                ),
                child: const Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
