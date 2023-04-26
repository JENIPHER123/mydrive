import 'package:flutter/material.dart';
import 'package:mydrive/admin/analytics/admin-analytics.dart';
import 'package:mydrive/admin/dash/admin-adsh.dart';
import 'package:mydrive/admin/failure/admin-failure.dart';
import 'package:mydrive/admin/landing/admin-landing.dart';
import 'package:mydrive/admin/login/admin-login.dart';
import 'package:mydrive/admin/profile/admin-profile.dart';
import 'package:mydrive/admin/success/admin-success.dart';
import 'package:mydrive/client/add-job/client-add-job.dart';
import 'package:mydrive/client/dash/client-dash.dart';
import 'package:mydrive/client/failure/client-failure.dart';
import 'package:mydrive/client/landing/client-landing.dart';
import 'package:mydrive/client/login/client-login.dart';
import 'package:mydrive/client/profile/client-profile.dart';
import 'package:mydrive/client/register/client-reg.dart';
import 'package:mydrive/client/success/client-success.dart';
import 'package:mydrive/driver/dash/driver-dash.dart';
import 'package:mydrive/driver/failure/driver-failure.dart';
import 'package:mydrive/driver/landing/driver-landing.dart';
import 'package:mydrive/driver/login/driver-login.dart';
import 'package:mydrive/driver/profile/driver-profile.dart';
import 'package:mydrive/driver/register/driver-reg.dart';
import 'package:mydrive/driver/select-job/driver-select-job.dart';
import 'package:mydrive/driver/success/driver-success.dart';
import 'package:mydrive/general/landing/main-landing.dart';
import 'package:mydrive/general/rauting/main-rauting.dart';
import 'package:mydrive/general/register/main-reg.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {

      /* routing the main pages */
      '/':(context) => const MainLanding(),
      'routing':(context) => const MainRauting(),
      'main-reg':(context) => const MainReg(),

      /* routing the admin system */
      'admin-dash':(context) => const AdminDash(),
      'admin-landing':(context) => const AdminLanding(),
      'admin-analytics':(context) => const AdminAnalytics(),
      'admin-login':(context) => const AdminLogin(),
      
      'admin-profile':(context) => const AdminProfile(),
      'admin-failure':(context) => const AdminFailure(),
      'admin-success':(context) => const AdminSuccess(),

      /* routing the client system */
      'client-add-job':(context) => const ClientAddJob(),
      'client-dash':(context) => const ClientDash(),
      'client-failure':(context) => const ClientFailure(),
      'client-landing':(context) => const ClientLanding(),
      'client-login':(context) => const ClientLogin(),
      'client-profile':(context) => const ClientProfile(),
      'client-reg':(context) => const ClientReg(),
      'client-success':(context) => const ClientSuccess(),

      /* routing the driver system */
      'driver-dash':(context) => const DriverDash(),
      'driver-failure':(context) => const DriverFailure(),
      'driver-landing':(context) => const DriverLanding(),
      'driver-login':(context) => const DriverLogin(),
      'driver-profile':(context) => const DriverProfile(),
      'driver-reg':(context) => const DriverReg(),
      'driver-select-job':(context) => const DriverSelectJob(),
      'driver-success':(context) => const DriverSuccess()

      
    },
  ));
}
