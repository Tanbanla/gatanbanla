import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_map_car/screens/car_list_view.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                'assets/onboarding.png',
                alignment: Alignment(-1, 0),
              ),
            ),
            Text('Premium cars. \nEnjoy the Luxury', style: TextStyle(
              color:  Colors.black87, fontSize: 32, fontWeight:  FontWeight.bold,
            ),),
            SizedBox(height: 12,),
            Text('Premium and prestige car daily. \nExperience he thrill at a lower price', style: TextStyle(color:  Colors.grey[400], fontSize: 16),),
            SizedBox(height: 20,),
            SizedBox(
              width: 320,
              height: 54,
              child: 
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(
                      builder: (context) => 
                        CarList()
                      )
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor:  Colors.white,
                  ),
                  child: Text('Let\'s GO', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                ),
            ),
            SizedBox(height: 24,),
          ],
        ),
      ),

    );
  }
}
