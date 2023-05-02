import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/sidenav/sidenav.dart';

class AdminLanding extends StatefulWidget {
  const AdminLanding({super.key});

  @override
  State<AdminLanding> createState() => _AdminLandingState();
}

class _AdminLandingState extends State<AdminLanding> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       drawer: const AdminSideNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: const Text('Landing....'),
      ),
      body: Center(
        child: Text('Admin Landing Page'),
      ),
    );
  }
}