import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AuthForgot extends StatefulWidget {
  const AuthForgot({super.key});

  @override
  State<AuthForgot> createState() => _AuthForgotState();
}

class _AuthForgotState extends State<AuthForgot> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Authentication Forgot Page'),),
    );
  }
}