import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AuthReg extends StatefulWidget {
  const AuthReg({super.key});

  @override
  State<AuthReg> createState() => _AuthRegState();
}

class _AuthRegState extends State<AuthReg> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Testing Code Register'),
    );
  }
}