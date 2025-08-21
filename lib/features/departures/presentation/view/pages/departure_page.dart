import 'package:bvg_departures/core/presentation/bloc/app_bloc.dart';
import 'package:bvg_departures/core/presentation/theme/context_theme_extension.dart';
import 'package:bvg_departures/core/presentation/widgets/error_view.dart';
import 'package:bvg_departures/core/presentation/widgets/loading_view.dart';
import 'package:bvg_departures/features/departures/presentation/view/views/departure_empty_view.dart';
import 'package:bvg_departures/features/departures/presentation/view/views/departure_list_view.dart';
import 'package:bvg_departures/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/di/di.dart';

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
    return BlocProvider(
      create: (context) => getIt<DepartureCubit>()..loadDepartures(stopId),
      child: Scaffold(
        appBar: AppBar(
          title: Text(stopName),
          leading: SizedBox(),
          actions: [
            IconButton(
              icon: SvgPicture.asset(Assets.icons.close),
              onPressed: () => context.pop(),
            ),
          ],
        ),
        body: BlocBuilder<DepartureCubit, DepartureState>(
          builder: (context, state) {
            return switch (state.status) {
              DepartureStatus.loading => LoadingView(),
              DepartureStatus.loaded =>
                state.departures.isEmpty
                    ? DepartureEmptyView()
                    : DepartureListView(
                        departures: state.departures,
                        onRefresh: () => context
                            .read<DepartureCubit>()
                            .loadDepartures(stopId),
                      ),
              DepartureStatus.error => ErrorView(
                errorText: state.failure?.toString(),
              ),
            };
          },
        ),
      ),
    );
  }
}
