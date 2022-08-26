import 'package:ds_gallery/presentation/core/component/atom/text/dsg_text_widget.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:flutter/material.dart';

class EmptyComponentGroupListWidget extends StatelessWidget {
  const EmptyComponentGroupListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ListView(
      key: const Key('emptyComponentGroupWidgetKey'),
      padding: const EdgeInsets.symmetric(horizontal: padding16),
      shrinkWrap: true,
      children: [
        DSGTextWidget(
          label: 'Invalid Search Query',
          textAlign: TextAlign.center,
          textColor: colorScheme.onSurface,
          textType: DSGTextType.headline5,
        ),
        const SizedBox(height: padding16),
        DSGTextWidget(
          label:
              'We could not find the component with given search combination.',
          textAlign: TextAlign.center,
          textColor: colorScheme.onSurface,
          textType: DSGTextType.bodyText1,
          maxLines: 15,
        ),
      ],
    );
  }
}
