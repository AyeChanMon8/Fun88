import 'package:flutter/material.dart';
import 'package:fun88_proj/constants/data.dart';


class CombinedIndicator extends Decoration {
  final Decoration underline;
  final Color lineColor;
  final double lineThickness;
  final double lineHeight;
  final double leftPadding;

  CombinedIndicator({
    required this.underline,
    this.lineColor = const Color(0XFF00a6ff),
    this.lineThickness = 1,
    this.lineHeight = 20,
    this.leftPadding = 12,
  });

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CombinedIndicatorPainter(
      underline.createBoxPainter(onChanged!),
      lineColor,
      lineThickness,
      lineHeight,
      leftPadding
    );
  }
}

class _CombinedIndicatorPainter extends BoxPainter {
  final BoxPainter underlinePainter;
  final Color lineColor;
  final double lineThickness;
  final double lineHeight;
  final double leftPadding;

  _CombinedIndicatorPainter(
      this.underlinePainter, this.lineColor, this.lineThickness, this.lineHeight,this.leftPadding);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    // 1. Paint underline first
    underlinePainter.paint(canvas, offset, cfg);

    // 2. Paint vertical line
    final Paint paint = Paint()
      ..color = lineColor
      ..strokeWidth = lineThickness
      ..style = PaintingStyle.stroke;

    final double dx = cfg.size!.width + offset.dx + leftPadding - lineThickness / 2; // right edge
    final double dy = offset.dy + (cfg.size!.height - lineHeight) / 2; // centered

    canvas.drawLine(
      Offset(dx, dy),
      Offset(dx, dy + lineHeight),
      paint,
    );
  }
}