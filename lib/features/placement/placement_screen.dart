import 'package:flutter/material.dart';

class PlacementScreen extends StatelessWidget {
  const PlacementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFC),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Placements',
          style: TextStyle(
            color: Color(0xff17171C),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Color(0xff17171C),
        ),
      ),
      body: const Center(
        child: Text(
          'Placements',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}