import 'package:flutter/material.dart';

import 'admin/analytics/admin-analytics.dart';
import 'admin/company-assets/company-assets.dart';
import 'admin/customer-feedback/customer-feedback.dart';
import 'admin/dash/admin-adsh.dart';
import 'admin/failure/admin-failure.dart';
import 'admin/forgot-pass/admin-forgot-pass.dart';
import 'admin/landing/admin-landing.dart';
import 'admin/liabilities/liabilities.dart';
import 'admin/login/admin-login.dart';
import 'admin/profile/admin-profile.dart';
import 'admin/profits/profits.dart';
import 'admin/success/admin-success.dart';
import 'client/add-job/client-add-job.dart';
import 'client/dash/client-dash.dart';
import 'client/failure/client-failure.dart';
import 'client/forgot-pass/client-forgot-pass.dart';
import 'client/landing/client-landing.dart';
import 'client/login/client-login.dart';
import 'client/profile/client-profile.dart';
import 'client/register/client-reg.dart';
import 'client/success/client-success.dart';
import 'driver/dash/driver-dash.dart';
import 'driver/failure/driver-failure.dart';
import 'driver/forgot-pass/driver-forgot-pass.dart';
import 'driver/landing/driver-landing.dart';
import 'driver/login/driver-login.dart';
import 'driver/profile/driver-profile.dart';
import 'driver/register/driver-reg.dart';
import 'driver/select-job/driver-select-job.dart';
import 'driver/success/driver-success.dart';
import 'general/landing/main-landing.dart';
import 'general/rauting/main-rauting.dart';
import 'general/register/main-reg.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      /* routing the main pages */
      '/': (context) => const MainLanding(),
      'routing': (context) => const MainRauting(),
      'main-reg': (context) => const MainReg(),

      /* routing the admin system */
      'admin-dash': (context) => const AdminDash(),
      'admin-landing': (context) => const AdminLanding(),
      'admin-analytics': (context) => const AdminAnalytics(),
      'admin-login': (context) => const AdminLogin(),
      'admin-forgot': (context) => const AdminForgot(),
      'admin-profile': (context) => const AdminProfile(),
      'admin-failure': (context) => const AdminFailure(),
      'admin-success': (context) => const AdminSuccess(),
      'admin-profits': (context) => const Profits(),
      'admin-liabilities': (context) => const Liabilities(),
      'admin-assets': (context) => const CompanyAssets(),
      'customer-feedback': (context) => const CustomerFeedback(),

      /* routing the client system */
      'client-add-job': (context) => const ClientAddJob(),
      'client-dash': (context) => const ClientDash(),
      'client-failure': (context) => const ClientFailure(),
      'client-landing': (context) => const ClientLanding(),
      'client-login': (context) => const ClientLogin(),
      'client-profile': (context) => const ClientProfile(),
      'client-reg': (context) => const ClientReg(),
      'client-success': (context) => const ClientSuccess(),
      'client-forgot': (context) => const ClientForgot(),

      /* routing the driver system */
      'driver-dash': (context) => const DriverDash(),
      'driver-failure': (context) => const DriverFailure(),
      'driver-landing': (context) => const DriverLanding(),
      'driver-login': (context) => const DriverLogin(),
      'driver-profile': (context) => const DriverProfile(),
      'driver-reg': (context) => const DriverReg(),
      'driver-select-job': (context) => const DriverSelectJob(),
      'driver-success': (context) => const DriverSuccess(),
      'driver-forgot': (context) => const DriverForgot()
    },
  ));
}
