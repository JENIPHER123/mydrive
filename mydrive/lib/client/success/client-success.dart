import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ClientSuccess extends StatefulWidget {
  const ClientSuccess({super.key});

  @override
  State<ClientSuccess> createState() => _ClientSuccessState();
}

class _ClientSuccessState extends State<ClientSuccess> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Client Success Page'),
      ),
    );
  }
}