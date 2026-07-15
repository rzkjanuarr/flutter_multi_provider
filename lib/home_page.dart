import 'package:flutter/material.dart';
import 'package:flutter_multi_provider/height_provider.dart';
import 'package:flutter_multi_provider/weight_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your Weight (Kg)', style: TextStyle(fontSize: 20)),
            Consumer<WeightProvider>(
              builder: (context, WP, _) => Slider(
                min: 1,
                max: 100,
                divisions: 100,
                label: WP.weight.round().toString(),
                value: WP.weight,
                onChanged: (newValue) {
                  newValue = newValue.roundToDouble();
                  print('Berat : $newValue');
                  WP.weight = newValue;
                },
              ),
            ),
            SizedBox(height: 20),
            Text('Your Height (cm)', style: TextStyle(fontSize: 20)),
            Consumer<HeightProvider>(
              builder: (context, HP, _) => Slider(
                min: 1,
                max: 200,
                divisions: 100,
                label: HP.height.round.toString(),
                value: HP.height,
                activeColor: Colors.pink,
                inactiveColor: Colors.pink.withOpacity(0.20),
                onChanged: (newValue) {
                  newValue = newValue.roundToDouble();
                  print('Tinggi : $newValue');
                  HP.height = newValue;
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Your BMI\n60.45',
              style: TextStyle(fontSize: 20, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
