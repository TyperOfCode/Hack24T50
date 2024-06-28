part of models;

class UserStats {
  String userId;
  List<double> habitScores;
  double avgHabitScore;
  List<Habit> displayedHabits;

  UserStats({
    // Id
    required this.userId,
    // Properties
    required this.habitScores,
    required this.avgHabitScore,
    required this.displayedHabits,
  });
}
