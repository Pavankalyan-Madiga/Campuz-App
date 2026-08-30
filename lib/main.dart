import 'package:flutter/material.dart';
import 'features/home/screens/home_screen.dart';

void main() {
  runApp(const CampusHubApp());
}

class CampusHubApp extends StatelessWidget {
  const CampusHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CampusHub',
      home: const HomeScreen(),
    );
  }
}

