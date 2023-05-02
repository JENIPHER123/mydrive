import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/sidenav/sidenav.dart';

class DriverSelectJob extends StatefulWidget {
  const DriverSelectJob({super.key});

  @override
  State<DriverSelectJob> createState() => _DriverSelectJobState();
}

class _DriverSelectJobState extends State<DriverSelectJob> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
           drawer: const DriverSideNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: const Text('Driver Select Job....'),
      ),
      body: Center(
        child: Text('Driver Select Job Page'),
      ),
    );
  }
}