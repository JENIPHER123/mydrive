import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/sidenav/sidenav.dart';

class ClientDash extends StatefulWidget {
  const ClientDash({super.key});

  @override
  State<ClientDash> createState() => _ClientDashState();
}

class _ClientDashState extends State<ClientDash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         drawer: const ClientSideNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: const Text('Client Dashboard....'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Text('Client Dash Page'),
        ),
      ),
    );
  }
}