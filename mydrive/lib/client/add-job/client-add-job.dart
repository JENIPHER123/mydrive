import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/sidenav/sidenav.dart';

class ClientAddJob extends StatefulWidget {
  const ClientAddJob({super.key});

  @override
  State<ClientAddJob> createState() => _ClientAddJobState();
}

class _ClientAddJobState extends State<ClientAddJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   drawer: const ClientSideNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: const Text('Client Add Job....'),
      ),
      body: Center(
        child: Text('Client Add Job Page'),
      ),
    );
  }
}