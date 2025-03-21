import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_map_car/data/car.dart';
import 'package:flutter_app_map_car/widgets/car_card.dart';

class CarDetailsPage extends StatelessWidget {
  const CarDetailsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline),
            Text('Information'),
          ],
        ),
      ),
      body: Column(
        children: [
          CarCard(car: Car(model: 'Honda City', distance: 680, fuelCapacity: 70, pricePerHour: 54)),
          SizedBox(height: 20,),
          Container(
            child: Column(
              children: [
                CircleAvatar(radius: 40, backgroundImage: AssetImage('assets/user.pang'),),
                SizedBox(height: 10,),
                Text('Jane Copper', style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
