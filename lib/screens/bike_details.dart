import 'package:flutter/material.dart';

import '../models/bike_model.dart';

class BikeDetailsScreen extends StatefulWidget {
  final Bike? bike;
  const BikeDetailsScreen({required this.bike, super.key});

  static const routeName = '/bike-details';

  @override
  State<BikeDetailsScreen> createState() => _BikeDetailsScreenState();
}

class _BikeDetailsScreenState extends State<BikeDetailsScreen> {
  Bike? bike;

  @override
  void initState() {
    super.initState();
    bike = widget.bike;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                children: [],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
