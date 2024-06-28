part of models;

class Habit {
  String name;
  String id;
  String iconId;
  String hexColor;
  bool isMeasurable;
  bool displayed;
  int todayValue;
  int incrementValue;
  int goal;
  int maxValue;
  HabitStats stats;

  Habit({
    // Id
    required this.name,
    required this.id,
    required this.iconId,
    required this.hexColor,
    // Bools
    required this.isMeasurable,
    required this.displayed,
    // Properties
    required this.todayValue,
    required this.incrementValue,
    required this.goal,
    required this.maxValue,
    // Stats
    required this.stats,
  });

  double getScore() {
    // Should be number between 0 - 1 that describes how well the habit is going.
    // TODO: Implement getScore

    return 1;
  }
}

class HabitStats {
  int streak;
  int longestStreak;
  List<Day> days;

  HabitStats({
    required this.streak,
    required this.longestStreak,
    required this.days,
  });
}

class Day {
  DateTime date;
  int value;

  Day({
    required this.date,
    required this.value,
  });
}
