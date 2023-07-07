import 'package:flutter/material.dart';
import 'package:water/model/WaterModel.dart';
import 'package:water/widgets/MainAppBar.dart';
import 'package:water/widgets/MainDrawer.dart';

class SettingScreen extends StatelessWidget {
  final WaterModel waterModel;

  SettingScreen({super.key, required this.waterModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(title: "Settings"),
      drawer: MainDrawer(),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration:
                    InputDecoration(labelText: "Your daily water intake goal"),
                keyboardType: TextInputType.number,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Unit of water volume. eg. Liter"),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 200,
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Icon(Icons.save), Text(" Save")])),
            ),
          ],
        ),
      ),
    );
  }
}
