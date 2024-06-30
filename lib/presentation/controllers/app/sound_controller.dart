import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:step/gen/assets.gen.dart';
import 'dart:math';

final _incrementHabitSources = [
  AssetSource(const $AssetsSoundsGen().blob1),
  AssetSource(const $AssetsSoundsGen().blob2),
];

final _completedHabitSource = AssetSource(const $AssetsSoundsGen().pop);

final _completedAllHabitsSource = AssetSource(const $AssetsSoundsGen().buttonPressedUppp);






/// Plays the jingle, like when habits are incremented
class JingleController {
  final _player = () {
    final player = AudioPlayer();
    player.audioCache = AudioCache(prefix: '');
    return player;
  } ();
  var rng = Random();

  void playIncrementHabit() {
    final ind = rng.nextInt(_incrementHabitSources.length);
    _player.stop();
    _player.play(_incrementHabitSources[ind]);
  }

  void playCompletedHabit() {
    _player.stop();
    _player.play(_completedHabitSource);
  }

  void playCompletedAllHabits() {
    _player.stop();
    _player.play(_completedAllHabitsSource);
  }

}

final jingleControllerProvider = StateProvider<JingleController>(
  (ref) => JingleController(),
);





