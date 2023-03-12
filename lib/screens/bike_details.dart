import 'dart:ui';

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
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Image.asset(
                    bike!.bikeImage!,
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 4,
                        sigmaY: 2,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            bike!.bikeName!,
                            style: const TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.star_rounded,
                                    color: Color.fromARGB(255, 144, 156, 234),
                                    size: 19,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    bike!.rating!,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 144, 156, 234),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
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
