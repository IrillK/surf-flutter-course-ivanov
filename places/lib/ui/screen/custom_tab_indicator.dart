import 'dart:ui';
import 'package:flutter/material.dart';

//Indicator for visiting_screen
class CustomTabIndicator extends Decoration {
  Color indicatorColor;

  CustomTabIndicator(this.indicatorColor);

  @override
  _CustomPainter createBoxPainter([VoidCallback onChanged]) {
    return new _CustomPainter(this, onChanged, indicatorColor);
  }
}

class _CustomPainter extends BoxPainter {
  Color indicatorColor;
  final CustomTabIndicator decoration;

  _CustomPainter(this.decoration, VoidCallback onChanged, this.indicatorColor)
      : assert(decoration != null),
        super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);
    double indicatorHeight = 40;
    final Rect rect = Offset(
            offset.dx, (configuration.size.height / 2) - indicatorHeight / 2) &
        Size(configuration.size.width, indicatorHeight);
    final Paint paint = Paint();
    paint.color = indicatorColor;
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
        RRect.fromRectAndRadius(rect, Radius.circular(40.0)), paint);
  }
}
