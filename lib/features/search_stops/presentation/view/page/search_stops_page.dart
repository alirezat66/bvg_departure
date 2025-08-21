import 'package:bvg_departures/core/di/di.dart';
import 'package:flutter/material.dart';

import '../../../../../core/presentation/bloc/app_bloc.dart';

class SearchStopsPage extends StatelessWidget {
  const SearchStopsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchStopsBloc>(),
      child: Scaffold(),
    );
  }
}
