// TODO: implement fake data
import 'package:step/domain/models.dart';

class FakeData {
  static Habit drinkWater = const Habit(
    name: "Drink Water",
    id: "1234",
    iconHexId: 0xf0695, // Water drop
    unitLabel: "L",
    hexColor: 0xFF737098,
    isMeasurable: true,
    displayed: true,
    todayValue: 0,
    incrementValue: 0.25,
    dailyGoal: 1,
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
    iconHexId: 0xeecb, // Snooze icon
    unitLabel: "H",
    hexColor: 0xFF8F9FD3,
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

  static Habit placeholder = const Habit(
    name: "Placeholder",
    id: "1236",
    iconHexId: 0xf54f, // Airport shuttle rounded
    unitLabel: ".PL",
    hexColor: 0xFF662D91,
    isMeasurable: false,
    displayed: true,
    todayValue: 0,
    incrementValue: 1,
    dailyGoal: 1,
    maxValue: 1,
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

  static List<Habit> getAllHabits() {
    return [drinkWater, sleep, placeholder];
  }
}
