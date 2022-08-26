import 'package:ds_gallery/presentation/core/component/organism/code_viewer/syntax_highlighter.dart';
import 'package:ds_gallery/presentation/core/component/organism/code_viewer/syntax_highligther_style.dart';
import 'package:ds_gallery/presentation/core/component/organism/container/dsg_error_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DSGCodeViewWidget extends StatelessWidget {
  const DSGCodeViewWidget({
    Key? key,
    required this.filePath,
    this.onFileLoadedInView,
  }) : super(key: key);

  final String filePath;
  final Function(String)? onFileLoadedInView;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString(filePath),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          final codeData = snapshot.data;
          if (codeData == null) {
            return _buildErrorView(context);
          }
          onFileLoadedInView?.call(codeData);
          return _buildCodeViewContainer(context, codeData);
        } else {
          if (snapshot.hasError) {
            return _buildErrorView(context);
          }
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget _buildErrorView(BuildContext context) {
    return const DSGErrorContainerWidget(
      errorTitle: 'Oops…',
      errorMessage: 'Failed to read the asset file content',
    );
  }

  Widget _buildCodeViewContainer(BuildContext context, String codeContent) {
    codeContent = codeContent.replaceAll('\r\n', '\n');
    final brightness = Theme.of(context).brightness;
    final themeStyle = brightness == Brightness.dark
        ? DarkSyntaxHighlighterStyle()
        : LightSyntaxHighlighterStyle();

    return Container(
      constraints: const BoxConstraints.expand(),
      child: SingleChildScrollView(
        child: SelectableText.rich(
          TextSpan(
            style: GoogleFonts.robotoSerif(fontSize: 12),
            children: <TextSpan>[
              DartSyntaxHighlighter(
                syntaxHighlighterStyle: themeStyle,
              ).format(codeContent)
            ],
          ),
          style: DefaultTextStyle.of(context).style,
        ),
      ),
    );
  }
}
