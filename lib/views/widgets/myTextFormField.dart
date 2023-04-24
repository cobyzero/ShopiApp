import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  MyTextFormField(
      {super.key,
      required this.text,
      required this.fun,
      this.ico = false,
      this.iconData,
      this.color1 = Colors.grey,
      this.color2 = Colors.blue});
  String text;
  Function() fun;
  bool ico;
  IconData? iconData;
  Color color1;
  Color color2;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 240,
      child: TextFormField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
            labelText: text,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, color: color1),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: color1), borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: color2), borderRadius: BorderRadius.circular(10)),
            suffixIcon: ico ? IconButton(onPressed: fun, icon: Icon(iconData)) : null),
      ),
    );
  }
}
