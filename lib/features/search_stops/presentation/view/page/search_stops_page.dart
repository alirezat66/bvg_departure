import 'package:bvg_departures/core/di/di.dart';
import 'package:bvg_departures/core/presentation/theme/context_theme_extension.dart';
import 'package:bvg_departures/features/search_stops/presentation/view/views/idle_view.dart';
import 'package:bvg_departures/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/presentation/bloc/app_bloc.dart';

class SearchStopsPage extends StatelessWidget {
  const SearchStopsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchStopsBloc>(),
      child: Scaffold(
        backgroundColor: context.semantic.bgTertiary,

        appBar: AppBar(
          scrolledUnderElevation: 0, // Prevents elevation change on scroll
          surfaceTintColor: Colors.transparent, // Removes surface tint overlay
          shadowColor: Colors.transparent,
          toolbarHeight: 56 + 48,
          title: GestureDetector(
            onTap: () {},
            child: SearchBar(
              hintText: 'Search for station',
              enabled: false,
              leading: IconButton(
                icon: SvgPicture.asset(Assets.icons.search),
                onPressed: null,
              ),
            ),
          ),
        ),
        body: IdleView(),
      ),
    );
  }
}
