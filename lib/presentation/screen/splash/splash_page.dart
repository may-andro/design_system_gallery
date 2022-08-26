import 'package:ds_gallery/presentation/core/component/atom/text/dsg_text_widget.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DSGTextWidget(
              label: 'Component Gallery',
              textType: DSGTextType.headline2,
              textAlign: TextAlign.center,
              textColor: colorScheme.onSurface,
            ),
            DSGTextWidget(
              label: 'One Design, One System',
              textType: DSGTextType.overline,
              textAlign: TextAlign.center,
              textColor: colorScheme.onSurface,
            ),
          ],
        ),
      ),
    );
  }
}
