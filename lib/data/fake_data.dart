import 'package:step/domain/models.dart';

class FakeData {
  static Habit drinkWater = const Habit(
    name: "Water Drunk",
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

  static Habit eatMeal = const Habit(
    name: "Daily Meals",
    id: "1236",
    iconHexId: 0xe532, // Restaurant icon
    unitLabel: " meals",
    hexColor: 0xFF825B4A,
    isMeasurable: true,
    displayed: true,
    todayValue: 0,
    incrementValue: 1,
    dailyGoal: 3,
    maxValue: 5,
    stats: HabitStats(
      streak: 0,
      longestStreak: 0,
      days: [],
    ),
  );

  static Habit goOutside = const Habit(
    name: "Enjoying The Outdoors",
    id: "1237",
    iconHexId: 0x407C4E, // Nature icon
    unitLabel: "",
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

  static Habit socialize = const Habit(
    name: "Socializing",
    id: "1238",
    iconHexId: 0xe231, // People icon
    unitLabel: "",
    hexColor: 0xFFE75B5B,
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

  static Habit brushTeeth = const Habit(
    name: "Brushing Teeth",
    id: "1239",
    iconHexId: 0xe167, // Brush icon
    unitLabel: "",
    hexColor: 0xFF9A9A9A,
    isMeasurable: true,
    displayed: true,
    todayValue: 0,
    incrementValue: 1,
    dailyGoal: 2,
    maxValue: 3,
    stats: HabitStats(
      streak: 0,
      longestStreak: 0,
      days: [],
    ),
  );

  static Habit shower = const Habit(
    name: "Taking a Shower",
    id: "1240",
    iconHexId: 0xe5a0, // Shower icon
    unitLabel: "",
    hexColor: 0xFF8F9FD3,
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
    return [
      drinkWater,
      sleep,
      eatMeal,
      goOutside,
      socialize,
      brushTeeth,
      shower
    ];
  }
}
