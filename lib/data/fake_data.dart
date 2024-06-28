// TODO: implement fake data
import 'package:step/domain/models.dart';

class FakeData {
  static Habit drinkWater = const Habit(
    name: "Drink Water",
    id: "1234",
    iconId: "water_drop",
    unitLabel: "Litres",
    hexColor: 0x89DAFF,
    isMeasurable: true,
    displayed: true,
    todayValue: 0,
    incrementValue: 0.25,
    dailyGoal: 1.5,
    maxValue: 6,
    stats: HabitStats(
      streak: 0,
      longestStreak: 0,
      days: [],
    ),
  );

  static Habit sleep = const Habit(
    name: "Sleep Hours",
    id: "1235",
    iconId: "bedtime",
    unitLabel: "Hours",
    hexColor: 0x8d93d3,
    isMeasurable: true,
    displayed: true,
    todayValue: 0,
    incrementValue: 1,
    dailyGoal: 8,
    maxValue: 16,
    stats: HabitStats(
      streak: 0,
      longestStreak: 0,
      days: [],
    ),
  );
  static User baseFakeUser = User(userId: "fakeid", habits: [
    FakeData.drinkWater,
    FakeData.sleep,
  ]);
}
