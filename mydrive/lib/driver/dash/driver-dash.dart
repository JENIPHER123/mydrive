import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/sidenav/sidenav.dart';

class DriverDash extends StatefulWidget {
  const DriverDash({super.key});

  @override
  State<DriverDash> createState() => _DriverDashState();
}

class _DriverDashState extends State<DriverDash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DriverSideNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: const Text('Welcome Driver....'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Text('Driver DashPage'),
        ),
      ),
    );
  }
}
