import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AuthLanding extends StatefulWidget {
  const AuthLanding({super.key});

  @override
  State<AuthLanding> createState() => _AuthLandingState();
}

class _AuthLandingState extends State<AuthLanding> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Testing Code Landing'),
    );
  }
}