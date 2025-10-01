import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class MovingSquareGame extends Game {
  double squareX = 200; // Square ki X position
  double squareY = 200; // Square ki Y position
  double speed = 100;   // Kitni fast move karega (pixels per second)

  @override
  void update(double dt) {
    // UPDATE mein hum position change karenge
    // Har frame pe square right side move karega
    squareX = squareX + (speed * dt);

    // Agar square screen se bahar chala gaya toh wapas lao
    if (squareX > 400) {
      squareX = 0;
    }
  }

  @override
  void render(Canvas canvas) {
    final paint = Paint()..color = Colors.blue;

    canvas.drawRect(
      Rect.fromCenter(
        center: Offset(squareX, squareY), // Ab X position change hogi har frame pe
        width: 50,
        height: 50,
      ),
      paint,
    );
  }
}