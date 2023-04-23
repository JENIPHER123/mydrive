import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ClientLanding extends StatefulWidget {
  const ClientLanding({super.key});

  @override
  State<ClientLanding> createState() => _ClientLandingState();
}

class _ClientLandingState extends State<ClientLanding> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Text('Client Landing'),
    );
  }
}