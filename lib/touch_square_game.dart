import 'package:flame/events.dart'; // Flame ke tap aur input events ke liye
import 'package:flame/game.dart';   // Flame game base class ke liye
import 'package:flutter/material.dart'; // Flutter widgets aur colors ke liye

// Ye hamara custom game class hai, jisme hum square ko tap karenge
class TouchSquareGame extends FlameGame with TapDetector {
  // Square ki initial X aur Y position
  double squareX = 200;
  double squareY = 200;

  // Square ka color, initially red
  Color squareColor = Colors.red;

  // Game ka update method (yahan kuch update nahi ho raha abhi)
  @override
  void update(double dt) {
    // dt = delta time, yani har frame ke beech ka time
    // Yahan hum game objects ko update kar sakte hain
  }

  // Ye method game ke objects ko screen pe draw karta hai
  @override
  void render(Canvas canvas) {
    // Paint object bana rahe hain square ka color set karne ke liye
    final paint = Paint()..color = squareColor;

    // Square draw kar rahe hain
    canvas.drawRect(
      Rect.fromCenter(
        center: Offset(squareX, squareY), // Square ka center position
        width: 100, // Square ka width
        height: 100, // Square ka height
      ),
      paint, // Paint object (color etc.)
    );
  }

  // TapDetector ka method, jab user screen pe tap karta hai
  @override
  void onTapDown(TapDownInfo info) {
    // info.eventPosition.global se hume tap ki position milti hai screen ke coordinate me
    final tapPosition = info.eventPosition.global;

    // Check kar rahe hain ki tap square ke andar hai ya nahi
    bool isInsideSquare =
        tapPosition.x >= squareX - 50 &&  // Left side of square
            tapPosition.x <= squareX + 50 &&  // Right side of square
            tapPosition.y >= squareY - 50 &&  // Top side of square
            tapPosition.y <= squareY + 50;    // Bottom side of square

    // Agar tap square ke andar hai to color green, nahi to red
    squareColor = isInsideSquare ? Colors.green : Colors.red;
  }
}
