import 'package:flutter/material.dart';
import 'package:shopi_app/views/detail/detailView.dart';
import 'package:shopi_app/views/home/homeView.dart';
import 'package:shopi_app/views/login/loginView.dart';
import 'package:shopi_app/views/splash/splashView.dart';

Map<String, WidgetBuilder> routesApp() {
  return {
    "splash": (context) => const SplashView(),
    "login": (context) => const LoginView(),
    "home": (context) => const HomeView(),
    "detail": (context) => const DetailView()
  };
}
