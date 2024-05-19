import 'package:brick_breaker/brick.dart';
import 'package:flame/camera.dart';
import 'dart:ui';
import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';

class BrickBreakerGame extends FlameGame{
  static double grid = 0.1;
  static late Vector2 gridSize;
  
  final World world = World();
  late   CameraComponent cameraComponent = CameraComponent(world: world)
  ..viewfinder.anchor = Anchor.topLeft;

  @override
  void onLoad() async{
    await Flame.device.setLandscapeLeftOnly();
    await Future.delayed(const Duration(seconds: 1)); 
  
    gridSize = Vector2(size.x * grid, size.y * grid);
  }
}
