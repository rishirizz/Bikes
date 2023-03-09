import 'package:enfield_collection/components/dashboard_bottom_content.dart';
import 'package:flutter/material.dart';
import '../components/dashboard_top_content.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: Stack(
          children: [
            Column(
              children: const [
                Expanded(
                  flex: 2,
                  child: DashBoardTopContent(),
                ),
                Expanded(
                  flex: 3,
                  child: DashboardBottomContent(),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 10,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xff100e1c),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: const [
                            Icon(
                              Icons.home,
                              color: Color.fromARGB(255, 144, 156, 234),
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                color: Color.fromARGB(255, 144, 156, 234),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(
                              Icons.moped,
                              color: Color.fromARGB(255, 144, 156, 234),
                            ),
                            Text(
                              'Bikes',
                              style: TextStyle(
                                color: Color.fromARGB(255, 144, 156, 234),
                              ),
                            ),
                          ],
                        ),
                      ],
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
