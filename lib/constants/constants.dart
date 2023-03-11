import 'package:enfield_collection/models/dashboard_card_model.dart';
import 'package:flutter/material.dart';

import '../models/bike_model.dart';

List<DashBoardCard> dashBoardCards = [
  DashBoardCard(
    cardTitle: 'Gas Type',
    cardSubTitle: 'RON 98',
    cardIcon: Icons.gas_meter_outlined,
  ),
  DashBoardCard(
    cardTitle: 'Trip',
    cardSubTitle: '3000 km',
    cardIcon: Icons.route_outlined,
  ),
  DashBoardCard(
    cardTitle: 'Next Service',
    cardSubTitle: 'Apr 13, 2023',
    cardIcon: Icons.build_outlined,
  ),
  DashBoardCard(
    cardTitle: 'Last Service',
    cardSubTitle: 'Nov 09, 2022',
    cardIcon: Icons.calendar_month_outlined,
  ),
];

List<Bike> bikes = [
  Bike(
    bikeName: 'RE Himalayan',
    bikeImage: 'assets/himalayan.jpg',
    distance: '11.3 km',
    rating: '4.1',
  ),
  Bike(
    bikeName: 'RE Himalayan',
    bikeImage: 'assets/himalayan.jpg',
    distance: '11.3 km',
    rating: '4.1',
  ),
  Bike(
    bikeName: 'RE Himalayan',
    bikeImage: 'assets/himalayan.jpg',
    distance: '11.3 km',
    rating: '4.1',
  ),
  Bike(
    bikeName: 'RE Himalayan',
    bikeImage: 'assets/himalayan.jpg',
    distance: '11.3 km',
    rating: '4.1',
  ),
  Bike(
    bikeName: 'RE Himalayan',
    bikeImage: 'assets/himalayan.jpg',
    distance: '11.3 km',
    rating: '4.1',
  ),
  Bike(
    bikeName: 'RE Himalayan',
    bikeImage: 'assets/himalayan.jpg',
    distance: '11.3 km',
    rating: '4.1',
  ),
];
