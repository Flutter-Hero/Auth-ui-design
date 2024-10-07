import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier{


  bool _showPassowrd = false;
  bool get showPassword => _showPassowrd;


 togglePasswordVisibility(){

  _showPassowrd = !showPassword;
  notifyListeners();
 }
}