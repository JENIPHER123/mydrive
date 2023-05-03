import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DriverFailure extends StatefulWidget {
  const DriverFailure({super.key});

  @override
  State<DriverFailure> createState() => _DriverFailureState();
}

class _DriverFailureState extends State<DriverFailure> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Text('Driver Failure Page'),
        ),
      ),
    );
  }
}