import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  MyElevatedButton({super.key, required this.text, this.w = 150, required this.fun});
  String text;
  double w;
  Function() fun;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: fun,
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          fixedSize: Size(w, 10),
          shape: const StadiumBorder()),
      child: Text(
        text,
        style: const TextStyle(fontSize: 11),
      ),
    );
  }
}
