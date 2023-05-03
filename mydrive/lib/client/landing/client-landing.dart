import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/sidenav/sidenav.dart';

class ClientLanding extends StatefulWidget {
  const ClientLanding({super.key});

  @override
  State<ClientLanding> createState() => _ClientLandingState();
}

class _ClientLandingState extends State<ClientLanding> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         drawer: const ClientSideNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: const Text('Client Landing....'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Text('Client Landing Page'),
        ),
      ),
    );
  }
}