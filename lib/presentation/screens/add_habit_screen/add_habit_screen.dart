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
    var goRouter = ref.watch(goRouterProvider);
    var userNotifier = ref.watch(userStateProvider.notifier);
    User currentUser = ref.watch(userStateProvider);
    List<Habit> availableHabits = currentUser.availableHabits();

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Habit'),
      ),
      body: ListView.builder(
        itemCount: availableHabits.length,
        itemBuilder: (context, index) {
          Habit habit = availableHabits[index];
          return InkWell(
            onTap: () {
              userNotifier.addHabit(habit);
              goRouter.go(AppPaths.homeScreen.path);
            },
            child: Row(children: [
              Text(habit.name, style: AppThemeTextStyles.buttonText),
            ],)
          );
        },
      ),
    );
  }
}