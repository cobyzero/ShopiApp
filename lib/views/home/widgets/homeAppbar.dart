import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(
              Icons.apple,
              color: Colors.black,
              size: 40,
            ),
            Text(
              "iStore",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(20)),
        ),
      ],
    );
  }
}
