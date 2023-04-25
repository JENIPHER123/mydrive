import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DriverDash extends StatefulWidget {
  const DriverDash({super.key});

  @override
  State<DriverDash> createState() => _DriverDashState();
}

class _DriverDashState extends State<DriverDash> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Driver DashPage'),
      ),
    );
  }
}