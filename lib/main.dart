import 'package:flutter/material.dart';
import 'package:mydrive/admin/failure/admin-failure-mssg.dart';
import 'package:mydrive/admin/login/admin-login.dart';
import 'package:mydrive/admin/register/admin-reg.dart';
import 'package:mydrive/admin/success/admin-success.dart';
import 'package:mydrive/client/dash/client-dash.dart';
import 'package:mydrive/client/failure/client-failure.dart';
import 'package:mydrive/client/landing/client-landing.dart';
import 'package:mydrive/client/login/client-login.dart';
import 'package:mydrive/client/register/client-register.dart';
import 'package:mydrive/client/success/client-success.dart';
import 'package:mydrive/driver/dash/driver-dash.dart';
import 'package:mydrive/driver/failure/driver-failure.dart';
import 'package:mydrive/driver/login/driver-login.dart';
import 'package:mydrive/driver/register/driver-reg.dart';
import 'package:mydrive/driver/success/driver-success.dart';
import 'package:mydrive/main-landing.dart';

import 'admin/dash/admin-dash.dart';
import 'admin/landing/admin-landing.dart';
import 'driver/landing/driver-landing.dart';


void main() {
  runApp(MaterialApp(
    routes: {
      /* main landing page */
      '/' : (context) => const MainLanding(),
      
      /* driver links */
      'driver-dash' : (context) => const DriverDash(),
      'driver-failure' : (context) => const DriverFailure(),
      'driver-landing' : (context) => const DriverLanding(),
      'driver-login' : (context) => const DriverLogin(),
      'driver-reg' : (context) => const DriverRegister(),
      'driver-success' : (context) => const DriverSuccess(),

       /* client links */
      'client-dash' : (context) => const ClientDash(),
      'client-failure' : (context) => const ClientFailure(),
      'client-landing' : (context) => const ClientLanding(),
      'client-login' : (context) => const ClientLogin(),
      'client-reg' : (context) => const ClientRegister(),
      'client-success' : (context) => const ClientSuccess(),

       /* driver links */
      'admin-dash' : (context) => const AdminDash(),
      'admin-failure' : (context) => const AdminFailure(),
      'admin-landing' : (context) => const AdminLanding(),
      'admin-login' : (context) => const AdminLogin(),
      'admin-reg' : (context) => const AdminReg(),
      'admin-success' : (context) => const AdminSuccess(),


    },
  ));
  
}

