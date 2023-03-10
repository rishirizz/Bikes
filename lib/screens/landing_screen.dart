import 'package:enfield_collection/screens/bike_collection.dart';
import 'package:enfield_collection/screens/dashboard.dart';
import 'package:flutter/material.dart';


class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int selectedPage = 0;
  final pageOptions = [
    const DashBoard(),
    const BikesCollection(),
  ];
  bool? isInternetPresent;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black54,
        extendBody: true,
        body: pageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xff100e1c),
          currentIndex: selectedPage,
          selectedLabelStyle: const TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w800,
          ),
          // unselectedLabelStyle: cardSecondaryTextStyle,
          selectedItemColor: const Color(0xffffffff),
          unselectedItemColor: const Color(0xff707070),

          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.pie_chart,
                color: Color.fromARGB(255, 144, 156, 234),
                size: 16,
              ),
              activeIcon: Icon(
                Icons.pie_chart,
                color: Color.fromARGB(255, 144, 156, 234),
                size: 22,
              ),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.pedal_bike_outlined,
                color: Color.fromARGB(255, 144, 156, 234),
                size: 16,
              ),
              activeIcon: Icon(
                Icons.pedal_bike_outlined,
                color: Color.fromARGB(255, 144, 156, 234),
                size: 22,
              ),
              label: 'Bikes',
            ),
          ],
        ),
      ),
    );
  }
}
