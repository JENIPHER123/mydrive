import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainLanding extends StatefulWidget {
  const MainLanding({super.key});

  @override
  State<MainLanding> createState() => _MainLandingState();
}

class _MainLandingState extends State<MainLanding> {
  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Column(
        children:const [
         Text('Welcome back')
        ],
      ),

    );
  }
}