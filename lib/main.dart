import 'package:flutter/material.dart';
import 'package:shopi_app/providers/commonProvider.dart';
import 'package:shopi_app/views/routes.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CommonProvider()),
      ],
      child: MaterialApp(
        initialRoute: "splash",
        routes: routesApp(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
