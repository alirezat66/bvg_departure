import 'package:bvg_departures/core/data/model/product_extension.dart';
import 'package:bvg_departures/core/presentation/theme/context_theme_extension.dart';
import 'package:bvg_departures/features/search_stops/domain/entity/stop.dart';
import 'package:bvg_departures/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StopTiles extends StatelessWidget {
  final Stop stop;
  final Function(Stop) onTap;
  const StopTiles({super.key, required this.stop, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(stop),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.spacing.s16,
          vertical: context.spacing.s12,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            SvgPicture.asset(
              Assets.icons.exploreNearby,
              alignment: Alignment.topCenter,
            ),

            SizedBox(width: context.spacing.s12),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: context.spacing.s4,
                      children: [
                        Text(stop.name, style: context.textTheme.titleSmall),
                        Row(
                          spacing: 4,
                          children: stop.products
                              .map(
                                (e) => SvgPicture.asset(
                                  e.assetPath,
                                  width: context.spacing.s16,
                                  height: context.spacing.s16,
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(Assets.icons.chevronRight),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
