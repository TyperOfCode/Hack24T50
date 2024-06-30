import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:step/domain/models/habit_model/habit_model.dart';
import 'package:step/global_logger.dart';
import 'package:step/presentation/common/styles/styles.dart';
import 'package:step/presentation/popups/notification/user_notif.dart';

class HabitIcon extends StatelessWidget {
  final String username;
  final Habit habit;
  final double size;
  const HabitIcon({
    super.key,
    required this.habit,
    required this.username,
    this.size = 60,
  });

  @override
  Widget build(BuildContext context) {
    Color habitColor = Color(habit.hexColor);

    bool isCompleted = habit.todayValue >= habit.dailyGoal;

    return InkWell(
      onTap: () {
        LOG.i("Send notification to ${username} for ${habit.name}");

        var messages = habit.messages.map((e) => e).toList();

        var message = (messages..shuffle()).firstOrNull;

        ScaffoldMessenger.of(context).showSnackBar(
          GenerateUserNotif(
            title: "Encouraged $username!",
            message: message,
            color: habitColor,
            textColor: AppThemeColors.background500,
            icon: IconData(habit.iconHexId, fontFamily: "MaterialIcons"),
          ),
        );
      },
      customBorder: const CircleBorder(),
      radius: 10,
      splashColor: habitColor,
      child: Container(
        
        width: size * 1.2,
        height: size * 1.2,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: size,
                  height: size,
                  child: CircularProgressIndicator(
                    value: habit.todayValue / habit.dailyGoal,
                    strokeWidth: size / 10,
                    valueColor: AlwaysStoppedAnimation<Color>(habitColor),
                    backgroundColor: AppThemeColors.background500,
                    strokeCap: StrokeCap.round,
                  ),
                ),
                Container(
                  width: size,
                  height: size,
                  decoration: BoxDecoration(
                    color: isCompleted
                        ? habitColor
                        : const Color.fromARGB(0, 0, 0, 0),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: habitColor,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        IconData(
                          habit.iconHexId,
                          fontFamily: "MaterialIcons",
                        ),
                        size: size / 2,
                        color: isCompleted
                            ? AppThemeColors.background500
                            : habitColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
