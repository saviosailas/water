import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:water/widgets/MainAppBar.dart';
import 'package:water/widgets/MainDrawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(title: "Water"),
      drawer: MainDrawer(),
      body: Container(
        margin: const EdgeInsets.all(25),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text("Your daily water intake"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularPercentIndicator(
                  radius: 80.0,
                  lineWidth: 12.0,
                  percent: 0.64,
                  center: const Text("3 Liter"),
                  progressColor: Colors.blue,
                  backgroundColor: const Color.fromARGB(255, 241, 213, 213),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
