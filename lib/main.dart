import 'package:flutter/material.dart';
import 'package:flutter_app_map_car/screens/car_list_view.dart';
import 'package:flutter_app_map_car/screens/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarList(),
    );
  }
}
