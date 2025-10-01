import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class BackgroundGradient extends Game {
  @override
  void render(Canvas canvas) {
    final rect = Rect.fromLTWH(0, 0, canvasSize.x, canvasSize.y);

    final paint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.blue,
          Colors.purple,
          Colors.pink,
        ],
      ).createShader(rect);

    canvas.drawRect(rect, paint);
  }

  @override
  void update(double dt) {}

}
