import 'package:flutter/material.dart';

class HomeModels extends StatelessWidget {
  const HomeModels({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          itemModel(model: "iPhone 13"),
          itemModel(model: "iPhone 13", active: true),
          itemModel(model: "iPhone 13"),
          itemModel(model: "iPhone 13"),
          itemModel(model: "iPhone 13"),
          itemModel(model: "iPhone 13"),
          itemModel(model: "iPhone 13"),
          itemModel(model: "iPhone 13"),
          itemModel(model: "iPhone 13"),
        ],
      ),
    );
  }

  Container itemModel({required String model, bool active = false}) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      alignment: Alignment.center,
      width: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: active ? Colors.black : Colors.white),
      child: Text(
        model,
        style: TextStyle(fontSize: 11, color: active ? Colors.white : Colors.black),
      ),
    );
  }
}
