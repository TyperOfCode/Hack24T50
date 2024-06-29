import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:step/data/repositories/user_handler.dart';
import 'package:step/domain/models.dart';
import 'package:step/global_logger.dart';
import 'package:step/presentation/common/components/habit_tile.dart';
import 'package:step/presentation/common/styles/styles.dart';
import 'package:step/routes.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var goRouter = ref.watch(goRouterProvider);

    User currentUser = ref.watch(userStateProvider);

    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! < 0) {
          goRouter.go(AppPaths.buddyScreen.path);
        }
      },
      child: Scaffold(
        backgroundColor: AppThemeColors.background500,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              createHabitGridView(currentUser.habits) // GridView
            ],
          ),
        ),
      ),
    );
  }
}

GridView createHabitGridView(List<Habit> habits) {
  return GridView.count(
    padding: const EdgeInsets.all(15),
    shrinkWrap: true,
    crossAxisCount: 2,
    crossAxisSpacing: 0,
    mainAxisSpacing: 10,
    children: habits
        .map(
          (e) => HabitTile(habit: e),
        )
        .toList(),
  );
}
