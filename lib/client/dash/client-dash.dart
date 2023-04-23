import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ClientDash extends StatefulWidget {
  const ClientDash({super.key});

  @override
  State<ClientDash> createState() => _ClientDashState();
}

class _ClientDashState extends State<ClientDash> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Text('Client Dash.'),
      
    );
  }
}