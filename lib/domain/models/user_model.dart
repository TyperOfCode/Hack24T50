part of models;

class User {
  String userId;
  List<Habit> habits;

  User({
    // Id
    required this.userId,
    // Properties
    required this.habits,
  });

  UserStats toUserStats() {
    List<double> habitScores = habits.map((e) => e.getScore()).toList();
    double avgHabitScore =
        habitScores.reduce((v, e) => v + e) / habitScores.length;

    return UserStats(
      userId: userId,
      habitScores: habitScores,
      avgHabitScore: avgHabitScore,
      displayedHabits: habits.where((e) => e.displayed).toList(),
    );
  }
}
