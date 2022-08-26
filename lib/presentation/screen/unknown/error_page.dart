import 'package:ds_gallery/presentation/core/component/atom/text/dsg_text_widget.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:flutter/material.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: Column(
        children: [
          DSGTextWidget(
            label: 'Invalid path',
            textAlign: TextAlign.center,
            textColor: colorScheme.onSurface,
            textType: DSGTextType.headline5,
          ),
          const SizedBox(height: padding16),
          DSGTextWidget(
            label:
                'This path does not exists, please go back or restart the app.',
            textAlign: TextAlign.center,
            textColor: colorScheme.onSurface,
            textType: DSGTextType.bodyText1,
            maxLines: 15,
          ),
        ],
      ),
    );
  }
}
