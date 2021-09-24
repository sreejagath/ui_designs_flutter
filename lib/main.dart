import 'package:flutter/material.dart';
import 'Pages/payment_page.dart';
import 'Pages/premium_page.dart';
import 'Pages/ordered_page.dart';
import 'Pages/my_page.dart';
import 'Pages/manage_store.dart';
import 'Pages/information.dart';

void main() {
  runApp(MaterialApp(
    home: MyAppState(),
    routes: {
      '/home': (context) => MyAppState(),
      '/ordered': (context) => OrderedPageState(),
      '/premium': (context) => PremiumPageState(),
      '/payments': (context) => PaymentPageState(),
      '/manage': (context) => ManageStore(),
      '/information': (context) => InformationPage(),
    },
  ));
}
