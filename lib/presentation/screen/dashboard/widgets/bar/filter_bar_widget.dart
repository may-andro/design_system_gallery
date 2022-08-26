import 'package:ds_gallery/presentation/core/component/atom/text/dsg_text_widget.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:ds_gallery/presentation/screen/dashboard/widgets/bar/filter_sort_order.dart';
import 'package:flutter/material.dart';

class FilterBarWidget extends StatelessWidget {
  const FilterBarWidget({
    Key? key,
    required this.filterSortOrder,
    required this.onSortApplied,
  }) : super(key: key);

  final FilterSortOrder filterSortOrder;
  final Function(FilterSortOrder) onSortApplied;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final sortOrderIcon = filterSortOrder == FilterSortOrder.asc
        ? Icons.arrow_drop_down
        : Icons.arrow_drop_up;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding16),
      child: Row(
        children: [
          Icon(sortOrderIcon, color: colorScheme.onSurface),
          const SizedBox(width: padding8),
          DSGTextWidget(
            textType: DSGTextType.overline,
            label: 'Sort alphabetically',
            textColor: colorScheme.onSurface,
          ),
          const Spacer(),
          MaterialButton(
            minWidth: padding16,
            onPressed: () {
              onSortApplied(filterSortOrder == FilterSortOrder.desc
                  ? FilterSortOrder.asc
                  : FilterSortOrder.desc);
            },
            child: Icon(Icons.sort_by_alpha, color: colorScheme.onSurface),
          ),
        ],
      ),
    );
  }
}
