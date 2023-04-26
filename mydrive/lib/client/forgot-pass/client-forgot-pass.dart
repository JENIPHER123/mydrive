import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ClientForgot extends StatefulWidget {
  const ClientForgot({super.key});

  @override
  State<ClientForgot> createState() => _ClientForgotState();
}

class _ClientForgotState extends State<ClientForgot> {
  @override
  Widget build(BuildContext context) {
     return const Scaffold(
      body: Center(child: Text('Client Forgot Page'),),
    );
  }
}