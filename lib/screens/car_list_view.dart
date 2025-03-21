import 'package:flutter/material.dart';
import 'package:flutter_app_map_car/data/car.dart';
import 'package:flutter_app_map_car/widgets/car_card.dart';

class CarList extends StatelessWidget {
  final List<Car> cars = [
    Car(
      model: 'Fortuner GR',
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
    Car(model: 'Honda City', distance: 680, fuelCapacity: 70, pricePerHour: 54),
    Car(model: 'Kia morning', distance: 580, fuelCapacity: 65, pricePerHour: 55),
  ];
  CarList({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCard(car: cars[index]);
        },
      ),
    );
  }
}
