import 'package:flutter/material.dart';
import 'package:shopi_app/util/common.dart';
import 'package:shopi_app/views/home/widgets/homeAppbar.dart';
import 'package:shopi_app/views/home/widgets/homeBanner.dart';
import 'package:shopi_app/views/home/widgets/homeDevices.dart';
import 'package:shopi_app/views/home/widgets/homeItems.dart';
import 'package:shopi_app/views/home/widgets/homeModels.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            const HomeAppBar(),
            space(h: 20),
            const HomeBanner(),
            space(h: 20),
            const HomeDevices(),
            space(h: 20),
            const HomeModels(),
            space(h: 20),
            const HomeItems()
          ],
        ),
      ),
    ));
  }
}
