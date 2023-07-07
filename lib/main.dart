import 'package:flutter/material.dart';
import 'package:water/model/WaterModel.dart';
import 'package:water/widgets/HomeScreen.dart';
import 'package:water/widgets/SettingScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final WaterModel waterModel =
      WaterModel(goalAmount: 0, waterUnit: "Liter", currentWater: 0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Water',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => HomeScreen(),
          "/settings": (context) => SettingScreen(
                waterModel: waterModel,
              )
        });
  }
}
