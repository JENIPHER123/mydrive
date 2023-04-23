import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AdminLanding extends StatefulWidget {
  const AdminLanding({super.key});

  @override
  State<AdminLanding> createState() => _AdminLandingState();
}

class _AdminLandingState extends State<AdminLanding> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Text('Admin Landing'),
    );
  }
}