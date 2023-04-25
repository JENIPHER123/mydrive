import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DriverLanding extends StatefulWidget {
  const DriverLanding({super.key});

  @override
  State<DriverLanding> createState() => _DriverLandingState();
}

class _DriverLandingState extends State<DriverLanding> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Driver Landing Page'),
      ),
    );
  }
}