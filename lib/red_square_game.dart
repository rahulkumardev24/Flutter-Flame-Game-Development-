import 'package:flame/game.dart';
import 'package:flutter/material.dart';

// Yeh humara game class hai - Yeh game ka brain hai
class RedSquareGame extends Game {

  // UPDATE function - Har frame pe yeh chalta hai (60 baar/second)
  // Yahan game ka logic aata hai - jaise character move karna, collision check karna
  @override
  void update(double dt) {
    // dt = "delta time" - last frame se kitna time guzra hai
    // Abhi koi logic nahi hai, isliye khaali hai
  }

  // RENDER function - Har frame pe screen draw karta hai
  // Yahan hum game ki cheezein draw karte hai - characters, background, etc.
  @override
  void render(Canvas canvas) {
    // Paint = Brush ki tarah hai - color, style define karta hai
    final paint = Paint()..color = Colors.red;

    // Canvas pe ek red rectangle draw karo
    canvas.drawRect(
      Rect.fromCenter(
        center: Offset(200, 200), // Screen pe kahan dikhega (x=200, y=200)
        width: 100,  // Kina wide hog
        height: 100, // Kina tall hog
      ),
      paint, // Kaun sa brush use karna hai
    );
  }
}