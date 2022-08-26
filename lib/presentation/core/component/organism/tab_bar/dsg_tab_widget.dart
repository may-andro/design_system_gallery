import 'package:ds_gallery/presentation/core/component/atom/text/dsg_text_widget.dart';
import 'package:flutter/material.dart';

class DSGTabWidget extends StatefulWidget {
  const DSGTabWidget({
    required this.title,
    required this.isExpanded,
    required this.isVertical,
    required this.tabCount,
    this.iconData,
    Key? key,
  }) : super(key: key);

  final String title;
  final bool isExpanded;
  final bool isVertical;
  final int tabCount;
  final IconData? iconData;

  @override
  _DSGTabWidgetState createState() => _DSGTabWidgetState();
}

class _DSGTabWidgetState extends State<DSGTabWidget>
    with SingleTickerProviderStateMixin {
  late Animation<double> _titleSizeAnimation;
  late Animation<double> _titleFadeAnimation;
  late Animation<double> _iconFadeAnimation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _titleSizeAnimation = _controller.view;
    _titleFadeAnimation = _controller.drive(CurveTween(curve: Curves.easeOut));
    _iconFadeAnimation = _controller.drive(Tween<double>(begin: 0.6, end: 1));
    if (widget.isExpanded) {
      _controller.value = 1;
    }
  }

  @override
  void didUpdateWidget(DSGTabWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isExpanded) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isVertical) {
      return Column(
        children: [
          const SizedBox(height: 18),
          FadeTransition(
            opacity: _iconFadeAnimation,
            child: _buildIcon(),
          ),
          const SizedBox(height: 12),
          FadeTransition(
            opacity: _titleFadeAnimation,
            child: SizeTransition(
              axis: Axis.vertical,
              axisAlignment: -1,
              sizeFactor: _titleSizeAnimation,
              child: Center(child: _buildTitle()),
            ),
          ),
          const SizedBox(height: 18),
        ],
      );
    }

    // Calculate the width of each unexpanded tab by counting the number of
    // units and dividing it into the screen width. Each unexpanded tab is 1
    // unit, and there is always 1 expanded tab which is 1 unit + any extra
    // space determined by the multiplier.
    final width = MediaQuery.of(context).size.width;
    const expandedTitleWidthMultiplier = 2;
    final unitWidth = width / (widget.tabCount + expandedTitleWidthMultiplier);

    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 56),
      child: Row(
        children: [
          FadeTransition(
            opacity: _iconFadeAnimation,
            child: SizedBox(
              width: unitWidth,
              child: _buildIcon(),
            ),
          ),
          FadeTransition(
            opacity: _titleFadeAnimation,
            child: SizeTransition(
              axis: Axis.horizontal,
              axisAlignment: -1,
              sizeFactor: _titleSizeAnimation,
              child: SizedBox(
                width: unitWidth * expandedTitleWidthMultiplier,
                child: Center(child: _buildTitle()),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle() => DSGTextWidget(
        label: widget.title,
        textColor: Colors.white,
        textType: DSGTextType.button,
      );

  Widget _buildIcon() => Icon(
        widget.iconData,
        semanticLabel: widget.title,
        color: Colors.white,
      );
}
