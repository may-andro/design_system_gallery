import 'package:ds_gallery/presentation/core/component/atom/text/dsg_text_widget.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DSGErrorContainerWidget extends StatelessWidget {
  const DSGErrorContainerWidget({
    Key? key,
    required this.errorTitle,
    required this.errorMessage,
  }) : super(key: key);

  final String errorTitle;
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;

    return Center(
      key: const Key('errorContainerWidgetKey'),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: padding16),
        shrinkWrap: true,
        children: [
          Icon(
            FontAwesomeIcons.exclamationTriangle,
            color: colorScheme.error,
            size: size.shortestSide * 0.15,
          ),
          const SizedBox(height: padding32),
          DSGTextWidget(
            label: errorTitle,
            textAlign: TextAlign.center,
            textType: DSGTextType.headline4,
            textColor: colorScheme.onSurface,
          ),
          const SizedBox(height: padding16),
          DSGTextWidget(
            label: errorMessage,
            textAlign: TextAlign.center,
            textType: DSGTextType.bodyText1,
            textColor: colorScheme.onSurface.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
