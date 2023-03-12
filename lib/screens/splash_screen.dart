import 'dart:ui';

import 'package:enfield_collection/screens/landing_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const routeName = '/splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToLandingScreen();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 144, 156, 234),
                Colors.grey.shade300,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: const Center(
              child: Text(
            'RE COLLECTIONS',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          )),
        ),
      ),
    );
  }

  navigateToLandingScreen() {
    Future.delayed(
      const Duration(
        seconds: 2,
      ),
      () => Navigator.of(context).pushReplacementNamed(
        LandingScreen.routeName,
      ),
    );
  }
}
