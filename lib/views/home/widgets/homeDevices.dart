import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeDevices extends StatelessWidget {
  const HomeDevices({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          itemDevice(device: "iPhone", icon: Icons.smartphone_outlined),
          itemDevice(device: "iPhone", icon: Icons.smartphone_outlined, active: true),
          itemDevice(device: "iPhone", icon: Icons.smartphone_outlined),
          itemDevice(device: "iPhone", icon: Icons.smartphone_outlined),
          itemDevice(device: "iPhone", icon: Icons.smartphone_outlined)
        ],
      ),
    );
  }

  Container itemDevice({required String device, required IconData icon, bool active = false}) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      width: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: active ? Colors.black : Colors.white),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(icon, size: 30, color: active ? Colors.white : Colors.black),
        Text(
          device,
          style: TextStyle(fontSize: 12, color: active ? Colors.white : Colors.black),
        ),
      ]),
    );
  }
}
