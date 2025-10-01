import 'dart:ui';

import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class LineDraw extends Game {
  @override
  void render(Canvas canvas) {
    final paint = Paint()
      ..color = Colors.yellow
      ..strokeWidth = 10;

    canvas.drawLine(Offset(100, 100), Offset(500, 200), paint);
  }

  @override
  void update(double dt) {}
}
