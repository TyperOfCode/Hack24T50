import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:step/data/repositories/user_handler.dart';
import 'package:step/domain/models.dart';
import 'package:step/presentation/common/styles/styles.dart';

class SuggestedHabitPopup extends ConsumerWidget {
  const SuggestedHabitPopup({Key? key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var userNotifier = ref.watch(userStateProvider.notifier);
    User currentUser = ref.watch(userStateProvider);
    List<Habit> availableHabits = currentUser.availableHabits();

    return Dialog (
      backgroundColor: AppThemeColors.background500,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          bottom: 40,
          left: 20,
          right: 20
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Add Habits",
              style: AppThemeTextStyles
                .titleText
                .copyWith(
                  fontWeight: FontWeight.w300, 
                  fontSize: 30.0,
                  color: AppThemeColors.accent
                ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 400,
              ),
              child: ListView.builder(
                itemCount: availableHabits.length,
                itemBuilder: (context, index) {
                  Habit habit = availableHabits[index];
                  return _SuggestedHabitButton( () {
                      userNotifier.addHabit(habit);
                      Navigator.pop(context);
                    }, 
                    habit
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}

@override
class _SuggestedHabitButton extends StatelessWidget {
  _SuggestedHabitButton(this.onPressed, Habit habit) : 
    iconHexId = habit.iconHexId, 
    habitName = habit.name,
    habitColor = Color(habit.hexColor);

  final void Function()? onPressed;
  final int iconHexId;
  final String habitName;
  final Color habitColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashColor: habitColor.withAlpha(100),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            // Habit Icon
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: habitColor,
                  width: 2,
                ),
              ),
              child: Icon(
                IconData(
                  iconHexId,
                  fontFamily: "MaterialIcons",
                ),
                size: 40,
                color: habitColor,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                habitName, 
                style: AppThemeTextStyles.buttonText
                  .copyWith(
                    fontSize: 27.0,
                    color: habitColor,
                ),
                overflow: TextOverflow.clip,
              ),
            ),
          ]
        ),
      )
    );
  }
}