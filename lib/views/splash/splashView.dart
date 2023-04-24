import 'package:flutter/material.dart';
import 'package:shopi_app/util/common.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3))
        .whenComplete(() => Navigator.pushNamed(context, "login"));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.apple,
            color: Colors.white,
            size: 100,
          ),
          space(h: 20),
          const SizedBox(
              width: 100,
              child: LinearProgressIndicator(
                backgroundColor: Color(0xff2D2D2D),
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
