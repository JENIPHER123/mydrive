import 'package:flutter/material.dart';
import 'package:testing/authentication/forgot-pass/auth-forgot-pass.dart';
import 'package:testing/authentication/home/auth-home.dart';
import 'package:testing/authentication/landing/auth-landing.dart';
import 'package:testing/authentication/login/auth-login.dart';
import 'package:testing/authentication/reg/auth-reg.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const AuthLanding(),
      'auth-home': (context) => const AuthHome(),
      'auth-login': (context) => const AuthLogin(),
      'auth-reg': (context) => const AuthReg(),
      'auth-forgot':(context) => const AuthForgot()
    },
  ));
}
/* check out app icon.co flutter */