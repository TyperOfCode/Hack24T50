import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:step/data/repositories/user_handler.dart';
import 'package:step/domain/models.dart';
import 'package:step/presentation/common/styles/styles.dart';
import 'package:step/routes.dart';

class AddHabitScreen extends ConsumerWidget {
  const AddHabitScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var userNotifier = ref.watch(userStateProvider.notifier);
    User currentUser = ref.watch(userStateProvider);
    List<Habit> availableHabits = currentUser.availableHabits();

    return Dialog(
      child: Column(
        children: [
          Text(
            "Add Habit",
            style: AppThemeTextStyles.titleText,
          ),
          const Spacer(),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 300,
            ),
            child: ListView.builder(
              itemCount: availableHabits.length,
              itemBuilder: (context, index) {
                Habit habit = availableHabits[index];
                return InkWell(
                    onTap: () {
                      userNotifier.addHabit(habit);
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Text(habit.name, style: AppThemeTextStyles.buttonText),
                      ],
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
