import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DriverSelectJob extends StatefulWidget {
  const DriverSelectJob({super.key});

  @override
  State<DriverSelectJob> createState() => _DriverSelectJobState();
}

class _DriverSelectJobState extends State<DriverSelectJob> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Driver Select Job Page'),
      ),
    );
  }
}