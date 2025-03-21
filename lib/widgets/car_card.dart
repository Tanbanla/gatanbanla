import 'package:flutter/material.dart';
import 'package:flutter_app_map_car/data/car.dart';

class CarCard extends StatelessWidget {
  final Car car;
  const CarCard({super.key, required this.car});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(16),
          boxShadow: [BoxShadow(
            color:  Colors.black12,
            blurRadius: 10,
            spreadRadius: 5,
        ),]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center ,
          children: [
            Image.asset('assets/car_image.png', height: 120,),
            Text(car.model, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24,),),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/gps.png'),
                        Text('${car.distance.toStringAsFixed(0)}Km'),
                      ],
                    ),
                    SizedBox(width: 12,),
                    Row(
                      children: [
                        Image.asset('assets/pump.png'),
                        Text('${car.fuelCapacity.toStringAsFixed(0)}L'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
