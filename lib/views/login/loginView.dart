import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopi_app/providers/commonProvider.dart';
import 'package:shopi_app/util/common.dart';
import 'package:shopi_app/views/widgets/myTextFormField.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final commonProvider = Provider.of<CommonProvider>(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          color: Colors.white,
          child: Container(
            margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, offset: Offset(2, 2), blurRadius: 10)
                ]),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.apple,
                      color: Colors.black,
                      size: 80,
                    ),
                    space(h: 40),
                    const Text(
                      "Sign in with Apple ID",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    space(h: 30),
                    MyTextFormField(
                      text: "Apple ID",
                      ico: !commonProvider.loginStatus,
                      color2: const Color(0xff0170C9),
                      iconData: Icons.arrow_circle_right_outlined,
                      fun: () {
                        commonProvider.loginStatus = true;
                      },
                    ),
                    space(h: 10),
                    if (commonProvider.loginStatus)
                      MyTextFormField(
                        ico: commonProvider.loginStatus,
                        iconData: Icons.arrow_circle_right_outlined,
                        text: "Password",
                        fun: () {
                          Navigator.pushNamed(context, "home");
                        },
                      ),
                    space(h: 40),
                    Container(width: 240, height: 1, color: Colors.grey.shade300),
                    TextButton(onPressed: () {}, child: const Text("Forgor Apple ID or password?")),
                    TextButton(onPressed: () {}, child: const Text("Create Apple ID")),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
