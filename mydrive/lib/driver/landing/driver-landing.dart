import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/sidenav/sidenav.dart';

class DriverLanding extends StatefulWidget {
  const DriverLanding({super.key});

  @override
  State<DriverLanding> createState() => _DriverLandingState();
}

class _DriverLandingState extends State<DriverLanding> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
           drawer: const DriverSideNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: const Text('Landing....'),
      ),
      body: Center(
        child: Text('Driver Landing Page'),
      ),
    );
  }
}