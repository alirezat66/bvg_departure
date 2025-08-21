import 'package:bvg_departures/core/data/consts/texts.dart';
import 'package:flutter/material.dart';

class EmptyQueryView extends StatelessWidget {
  const EmptyQueryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(emptyQuery));
  }
}
