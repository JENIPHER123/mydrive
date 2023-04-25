import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DriverSuccess extends StatefulWidget {
  const DriverSuccess({super.key});

  @override
  State<DriverSuccess> createState() => _DriverSuccessState();
}

class _DriverSuccessState extends State<DriverSuccess> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Driver Success Page'),
      ),
    );
  }
}