import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AdminSuccess extends StatefulWidget {
  const AdminSuccess({super.key});

  @override
  State<AdminSuccess> createState() => _AdminSuccessState();
}

class _AdminSuccessState extends State<AdminSuccess> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Text('Admin Success Page'),
        ),
      ),
    );
  }
}