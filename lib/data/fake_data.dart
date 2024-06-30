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
    dailyGoal: 2,
    maxValue: 6,
    stats: HabitStats(
      streak: 0,
      longestStreak: 0,
      days: [Day(dow: 0, value: 1.5), Day(dow: 1, value: 2.0), Day(dow: 2, value: 1.75), Day(dow: 3, value: 2.5), Day(dow: 4, value: 2.0), Day(dow: 5, value: 2.25), Day(dow: 6, value: 2.0)],
    ), 
    messages: ["One more sip!", "Stay hydrated!", "Hydrate homie!"],
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
      days: [Day(dow: 0, value: 7.5), Day(dow: 1, value: 8.0), Day(dow: 2, value: 7.75), Day(dow: 3, value: 8.5), Day(dow: 4, value: 8.0), Day(dow: 5, value: 8.25), Day(dow: 6, value: 8.0)],
    ),
    messages: ["Sleep tight!", "Rest up!", "Sweet dreams!"],
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
    messages: ["Bone apple tea!", "Don't forget lunch!", "Did you eat today?"],
  );

  static Habit goOutside = const Habit(
    name: "Go Outdoors",
    id: "1237",
    iconHexId: 0xe22f, // Nature icon
    unitLabel: "",
    hexColor: 0xFF662D91,
    isMeasurable: false,
    displayed: false,
    todayValue: 0,
    incrementValue: 1,
    dailyGoal: 1,
    maxValue: 1,
    stats: HabitStats(
      streak: 0,
      longestStreak: 0,
      days: [],
    ),
    messages: [
      "How about some fresh air?",
      "Time to touch grass.",
      "Lovely weather right?"
    ],
  );

  static Habit socialize = const Habit(
    name: "Socializing",
    id: "1238",
    iconHexId: 0xe231, // People icon
    unitLabel: "",
    hexColor: 0xFFE75B5B,
    isMeasurable: false,
    displayed: false,
    todayValue: 0,
    incrementValue: 1,
    dailyGoal: 1,
    maxValue: 1,
    stats: HabitStats(
      streak: 0,
      longestStreak: 0,
      days: [],
    ),
    messages: [
      "Movie night?",
      "How about a catch up?",
      "Time to talk to a friend?"
    ],
  );

  static Habit brushTeeth = const Habit(
    name: "Brushing Teeth",
    id: "1239",
    iconHexId: 0xe167, // Brush icon
    unitLabel: "",
    hexColor: 0xFF9A9A9A,
    isMeasurable: true,
    displayed: false,
    todayValue: 0,
    incrementValue: 1,
    dailyGoal: 2,
    maxValue: 3,
    stats: HabitStats(
      streak: 0,
      longestStreak: 0,
      days: [],
    ),
    messages: ["Keep those teeth shiny!", "Brushin' time!", "Maybe floss too?"],
  );

  static Habit shower = const Habit(
    name: "Taking a Shower",
    id: "1240",
    iconHexId: 0xe5a0, // Shower icon
    unitLabel: "",
    hexColor: 0xFF8F9FD3,
    isMeasurable: false,
    displayed: false,
    todayValue: 0,
    incrementValue: 1,
    dailyGoal: 1,
    maxValue: 1,
    stats: HabitStats(
      streak: 0,
      longestStreak: 0,
      days: [],
    ),
    messages: [
      "Don't forget deodorant!",
      "Bath time!",
      "How about a nice relaxing shower?"
    ],
  );

  static Habit exercise = const Habit(
    name: "Exercise",
    id: "1241",
    iconHexId: 0xf06c3, // Gymnastics icon
    unitLabel: "",
    hexColor: 0xFF456260,
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
    messages: ["Gym?", "Time to pump some iron!", "How bout' a run?"],
  );

  static User baseFakeUser = User(
    displayName: "You",
    userId: "fakeid",
    habits: [
      FakeData.drinkWater,
      FakeData.sleep,
    ],
    buddyIds: [],
  );

  static User kaianiUser = User(
    displayName: "Kaiani",
    userId: "kaiani",
    habits: [
      drinkWater.copyWith(
        todayValue: 1.25,
      ),
      sleep.copyWith(
        todayValue: 7,
      ),
    ],
    buddyIds: [],
    lastActivity: "Started: Drink Water",
  );

  static User sophiaUser = User(
    displayName: "Sophia",
    userId: "sophia",
    habits: [
      drinkWater.copyWith(
        todayValue: 2,
      ),
      eatMeal.copyWith(
        todayValue: 2,
      ),
      sleep.copyWith(
        todayValue: 4,
      ),
    ],
    buddyIds: [],
    lastActivity: "On a 10 day streak!",
  );

  static User bobUser = User(
    displayName: "Bob",
    userId: "bob",
    habits: [
      drinkWater.copyWith(
        todayValue: 0.2,
      ),
      exercise.copyWith(
        todayValue: 0,
      ),
      sleep.copyWith(
        todayValue: 8,
      ),
    ],
    buddyIds: [],
    lastActivity: "Joined recently",
  );

  static List<User> getAllUsers() {
    return [
      kaianiUser,
      sophiaUser,
      bobUser,
    ];
  }

  static List<Habit> getAllHabits() {
    return [
      drinkWater,
      sleep,
      eatMeal,
      goOutside,
      socialize,
      brushTeeth,
      shower,
      exercise
    ];
  }
}
