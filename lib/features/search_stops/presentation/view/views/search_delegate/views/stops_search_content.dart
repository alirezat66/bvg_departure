import 'package:bvg_departures/core/data/consts/texts.dart';
import 'package:bvg_departures/core/presentation/bloc/app_bloc.dart';
import 'package:bvg_departures/core/presentation/widgets/error_view.dart';
import 'package:bvg_departures/core/presentation/widgets/loading_view.dart';
import 'package:bvg_departures/features/search_stops/domain/entity/stop.dart';
import 'package:bvg_departures/features/search_stops/presentation/view/views/search_delegate/views/empty_result_view.dart';
import 'package:bvg_departures/features/search_stops/presentation/view/views/search_delegate/views/stop_list_view.dart';
import 'package:flutter/widgets.dart';

class StopsSearchContent extends StatefulWidget {
  final Function(Stop) onStopSelected;
  const StopsSearchContent({super.key, required this.onStopSelected});

  @override
  State<StopsSearchContent> createState() => _StopsSearchContentState();
}

class _StopsSearchContentState extends State<StopsSearchContent> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchStopsBloc, SearchStopsState>(
      builder: (context, state) {
        switch (state.status) {
          case SearchStatus.idle:
            return const SizedBox.shrink();
          case SearchStatus.loading:
            return LoadingView(loadingText: stopsLoadingText);
          case SearchStatus.error:
            return ErrorView(errorText: stopsErrorText);
          case SearchStatus.loaded:
            if (state.suggestions.isEmpty) {
              return const EmptyResultView();
            }
            return StopListView(
              stops: state.suggestions,
              onTap: (stop) {
                widget.onStopSelected(stop);
              },
            );
        }
      },
    );
  }
}
