import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DriverForgot extends StatefulWidget {
  const DriverForgot({super.key});

  @override
  State<DriverForgot> createState() => _DriverForgotState();
}

class _DriverForgotState extends State<DriverForgot> {
  @override
  Widget build(BuildContext context) {
     return const Scaffold(
      body: Center(child: Text('Driver Forgot Page'),),
    );
  }
}