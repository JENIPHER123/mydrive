import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ClientFailure extends StatefulWidget {
  const ClientFailure({super.key});

  @override
  State<ClientFailure> createState() => _ClientFailureState();
}

class _ClientFailureState extends State<ClientFailure> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Client Failure Page'),
      ),
    );
  }
}