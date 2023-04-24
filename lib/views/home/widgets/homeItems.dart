import 'package:flutter/material.dart';
import 'package:shopi_app/util/common.dart';
import 'package:shopi_app/views/widgets/myElevatedButton.dart';

class HomeItems extends StatelessWidget {
  const HomeItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: (100 / 120)),
      children: [
        itemGeneral(context),
        itemGeneral(context),
        itemGeneral(context),
        itemGeneral(context),
        itemGeneral(context),
        itemGeneral(context),
        itemGeneral(context)
      ],
    ));
  }

  Container itemGeneral(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [itemColor(Colors.green), itemColor(Colors.grey), itemColor(Colors.black12)],
          ),
          space(h: 10),
          Image.asset(
            "assets/macbookair.png",
            width: 100,
          ),
          space(h: 10),
          Container(
            alignment: Alignment.center,
            width: 40,
            height: 13,
            decoration:
                BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(10)),
            child: const Text(
              "2021",
              style: TextStyle(fontSize: 8),
            ),
          ),
          space(h: 5),
          const Text(
            "MacBoook Air",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          MyElevatedButton(
            text: "Detail",
            fun: () {
              Navigator.pushNamed(context, "detail");
            },
          ),
          space(h: 10),
        ],
      ),
    );
  }

  Container itemColor(Color color) {
    return Container(
      margin: const EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: color),
    );
  }
}
