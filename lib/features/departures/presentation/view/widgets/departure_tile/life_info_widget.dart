import 'package:bvg_departures/core/data/model/product_extension.dart';
import 'package:bvg_departures/core/presentation/theme/context_theme_extension.dart';
import 'package:bvg_departures/features/departures/domain/entities/departure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LineInfoWidget extends StatelessWidget {
  const LineInfoWidget({super.key, required this.departure});

  final Departure departure;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(departure.lineProduct.assetPath),
        SizedBox(width: context.shape.small),
        Container(
          padding: EdgeInsets.symmetric(horizontal: context.shape.small),
          decoration: BoxDecoration(
            border: Border.all(color: context.semantic.borderPrimary, width: 1),
            borderRadius: BorderRadius.circular(context.shape.small),
          ),
          child: Text(
            departure.lineName,
            style: context.textTheme.labelSmall?.copyWith(
              color: context.semantic.fgPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
