import 'package:flame/game.dart';
import 'package:flame_concept/shape/red_square_game.dart';
import 'package:flame_concept/touch_square_game.dart';
import 'package:flutter/cupertino.dart';
import 'background/background_color.dart';
import 'background/background_gradient.dart';
import 'background/background_image.dart';
import 'shape/line_draw.dart';
import 'moving_square_game.dart';

void main(){
  runApp(GameWidget(game: BackgroundGradient()));
}