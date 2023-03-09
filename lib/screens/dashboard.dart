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
      body: Column(
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
    ));
  }
}
