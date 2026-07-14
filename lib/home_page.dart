import 'package:flutter/material.dart';

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
            Slider(
              min: 1,
              max: 100,
              value: 40,
              onChanged: (newValue) {
                print('Berat : $newValue');
              },
            ),
            SizedBox(height: 20),
            Text('Your Height (cm)', style: TextStyle(fontSize: 20)),
            Slider(
              min: 1,
              max: 200,
              value: 100,
              activeColor: Colors.pink,
              inactiveColor: Colors.pink.withOpacity(0.20),
              onChanged: (newValue) {
                print('Tinggi : $newValue');
              },
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
