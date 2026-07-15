import 'package:flutter/material.dart';
import 'package:flutter_multi_provider/height_provider.dart';
import 'package:flutter_multi_provider/home_page.dart';
import 'package:flutter_multi_provider/weight_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<WeightProvider>(
      create: (context) => WeightProvider(),
      child: ChangeNotifierProvider<HeightProvider>(
        create: (context) => HeightProvider(),
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        ),
      ),
    );
  }
}
