import 'package:bvg_departures/core/di/di.dart';
import 'package:bvg_departures/core/presentation/bloc/app_bloc.dart';
import 'package:bvg_departures/core/presentation/theme/context_theme_extension.dart';
import 'package:bvg_departures/features/search_stops/domain/entity/stop.dart';
import 'package:bvg_departures/features/search_stops/presentation/view/views/search_delegate/views/empty_query_view.dart';
import 'package:bvg_departures/features/search_stops/presentation/view/views/search_delegate/views/stops_search_content.dart';
import 'package:bvg_departures/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchStopsDelegate extends SearchDelegate<Stop?> {
  SearchStopsDelegate() : _bloc = getIt<SearchStopsBloc>();

  final SearchStopsBloc _bloc;
  @override
  String get searchFieldLabel => 'Search for station';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      query.isEmpty
          ? const SizedBox.shrink()
          : IconButton(
              onPressed: () {
                query = '';
              },
              icon: SvgPicture.asset(Assets.icons.cancel),
            ),
    ];
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    final base = Theme.of(context);
    final sem = context.semantic;
    final bodyLarge = base.textTheme.bodyLarge;

    return base.copyWith(
      appBarTheme: base.appBarTheme.copyWith(
        backgroundColor: sem.bgPrimary,
        foregroundColor: sem.fgPrimary,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        scrolledUnderElevation: 0,

        centerTitle: true,
        shape: const Border(bottom: BorderSide(color: Colors.black, width: 1)),
        titleTextStyle: bodyLarge?.copyWith(color: sem.fgPrimary),
      ),

      textTheme: base.textTheme.copyWith(titleLarge: bodyLarge),
    );
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(Assets.icons.arrowLeftAlt),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty) {
      return const EmptyQueryView();
    }

    return BlocProvider.value(
      value: _bloc,
      child: StopsSearchContent(
        onStopSelected: (stop) {
          query = stop.name;
          close(context, stop);
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return const EmptyQueryView();
    }

    // Todo : find a way to close this part out of build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _bloc.add(SearchStopsEvent.queryChanged(query));
    });

    return BlocProvider.value(
      value: _bloc,
      child: StopsSearchContent(
        onStopSelected: (stop) {
          query = stop.name;
          close(context, stop);
        },
      ),
    );
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }
}
