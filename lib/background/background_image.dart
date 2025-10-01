import 'dart:ui';
import 'package:flame/game.dart';
import 'package:flame/components.dart'; // Sprite ke liye

class BackgroundImage extends FlameGame {
  late Sprite background;

  @override
  Future<void> onLoad() async {
    background = await loadSprite('background_image.jpg');
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    // Background ko full screen pe render karna
    background.render(
      canvas,
      size: size, // Game screen ka size
    );
  }

  @override
  void update(double dt) {}
}
