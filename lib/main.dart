import 'package:flutter/material.dart';

import 'driver/landing/landing.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/' : (context) => Landing(),
    },
  ));
  
}

