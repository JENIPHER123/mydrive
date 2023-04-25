import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainRauting extends StatefulWidget {
  const MainRauting({super.key});

  @override
  State<MainRauting> createState() => _MainRautingState();
}

class _MainRautingState extends State<MainRauting> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Main Rauting hPage'),
      ),
    );
  }
}