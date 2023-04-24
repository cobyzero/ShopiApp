import 'package:flutter/material.dart';

class CommonProvider with ChangeNotifier {
  bool _loginStatus = false;

  bool get loginStatus => _loginStatus;

  set loginStatus(bool d) {
    _loginStatus = d;
    notifyListeners();
  }

/* Details carrusel Status */
  int _detailsCarruselStatus = 0;

  int get detailsCarruselStatus => _detailsCarruselStatus;

  set detailsCarruselStatus(int d) {
    _detailsCarruselStatus = d;
    notifyListeners();
  }
}
