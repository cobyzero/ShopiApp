import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopi_app/providers/commonProvider.dart';

class DetailImageProduct extends StatelessWidget {
  const DetailImageProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final commonProvider = Provider.of<CommonProvider>(context);
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: PageView.builder(
        itemCount: 4,
        onPageChanged: (value) {
          commonProvider.detailsCarruselStatus = value;
        },
        itemBuilder: (context, index) {
          double margin = commonProvider.detailsCarruselStatus == index ? 10 : 30;

          return AnimatedContainer(
            duration: const Duration(microseconds: 500),
            curve: Curves.easeInCubic,
            margin: EdgeInsets.all(margin),
            decoration: BoxDecoration(boxShadow: const [
              BoxShadow(offset: Offset(2, 2), color: Colors.grey, blurRadius: 10)
            ], borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/mac.jpg",
                  width: 290,
                )
              ],
            ),
          );
        },
        pageSnapping: true,
        controller: PageController(viewportFraction: 0.8),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
