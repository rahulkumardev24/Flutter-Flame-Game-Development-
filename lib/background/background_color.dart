import 'dart:ui';

import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class BackgroundColor extends Game {
  @override
  void render(Canvas canvas) {
    // Pehle background fill karenge
    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.x, size.y),
      Paint()..color = Colors.blue.shade200,
    );

    /// Circle Draw
    final paint = Paint()..color = Colors.blue;
    canvas.drawCircle(Offset(200, 200), 80, paint);
  }

  @override
  void update(double dt) {}
}
