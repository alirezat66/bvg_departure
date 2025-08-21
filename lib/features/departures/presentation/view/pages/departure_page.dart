import 'package:flutter/material.dart';

class DeparturePage extends StatelessWidget {
  final String stopId;
  final String stopName;
  const DeparturePage({
    super.key,
    required this.stopId,
    required this.stopName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(stopName), centerTitle: true),
      body: Center(
        child: Text('Departure information will be displayed here.'),
      ),
    );
  }
}
