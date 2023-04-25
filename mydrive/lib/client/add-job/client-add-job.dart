import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ClientAddJob extends StatefulWidget {
  const ClientAddJob({super.key});

  @override
  State<ClientAddJob> createState() => _ClientAddJobState();
}

class _ClientAddJobState extends State<ClientAddJob> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Client Add Job Page'),
      ),
    );
  }
}