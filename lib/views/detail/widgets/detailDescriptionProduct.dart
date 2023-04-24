import 'package:flutter/material.dart';
import 'package:shopi_app/util/common.dart';

class DetailDescriptionProduct extends StatelessWidget {
  const DetailDescriptionProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [row1(), space(h: 10), row2()],
      ),
    );
  }

  Row row2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Text(
              "4.0",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            space(w: 10),
            const Icon(
              Icons.star,
              color: Colors.yellow,
            )
          ],
        ),
        Row(
          children: [
            const Text(
              "Add to wishlist",
              style: TextStyle(color: Colors.grey),
            ),
            space(w: 10),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, offset: Offset(2, 2), blurRadius: 5)
                  ]),
              child: const Icon(
                Icons.star_border_outlined,
                color: Colors.yellow,
              ),
            )
          ],
        )
      ],
    );
  }

  Row row1() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Macbook Pro",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              "by Apple",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
        const Text(
          "\$2,399",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
        )
      ],
    );
  }
}
