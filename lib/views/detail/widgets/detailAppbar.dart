import 'package:flutter/material.dart';
import 'package:shopi_app/util/common.dart';

class DetailAppbar extends StatelessWidget {
  const DetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: 40,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new)),
          const Text(
            "Apple Macbook Pro",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          space(w: 20)
        ],
      ),
    );
  }
}
