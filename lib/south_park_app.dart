import 'package:flutter/material.dart';
import 'package:south_park_app/router/router.dart';
import 'package:south_park_app/theme/theme.dart';

class SouthParkApp extends StatelessWidget {
  const SouthParkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'South Park',
      theme: darkTheme,
      routes: routes,
    );
  }
}