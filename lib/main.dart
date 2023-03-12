import 'package:enfield_collection/screens/landing_screen.dart';
import 'package:enfield_collection/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'models/bike_model.dart';
import 'screens/bike_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Oxygen',
      ),
      home: const SplashScreen(),
      onGenerateRoute: (settings) {
        var routes = <String, WidgetBuilder>{
          SplashScreen.routeName: (BuildContext context) =>
              const SplashScreen(),
          LandingScreen.routeName: (BuildContext context) =>
              const LandingScreen(),
          BikeDetailsScreen.routeName: (BuildContext context) =>
              BikeDetailsScreen(
                bike: settings.arguments as Bike?,
              ),
        };
        WidgetBuilder builder = routes[settings.name]!;
        return MaterialPageRoute(
          builder: (ctx) => builder(ctx),
        );
      },
    );
  }
}
