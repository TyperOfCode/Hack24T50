import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:step/data/repositories/user_handler.dart';
import 'package:step/domain/models.dart';
import 'package:step/presentation/common/styles/styles.dart';
import 'package:step/presentation/controllers/app/app_controller.dart';
import 'package:step/routes.dart';


class StatScreen extends ConsumerStatefulWidget {
  const StatScreen({super.key});

  @override
  ConsumerState<StatScreen> createState() => _StatScreenState();
}

class _StatScreenState extends ConsumerState<StatScreen> {

  @override
  Widget build(BuildContext context) {
    var goRouter = ref.watch(goRouterProvider);
    var currentUserNotifier = ref.watch(userStateProvider.notifier);
    var userState = ref.watch(userStateProvider);
    var appState = ref.watch(appStateProvider);

    Habit? selectedHabit = currentUserNotifier.getHabit(appState.selectedHabitForStats!.id);
    if (selectedHabit == null) {
      // navigate back
      goRouter.go(AppPaths.homeScreen.path);
      throw Exception("No habit selected for stats and failed to navigate");
    }

    Color habitColor = Color(selectedHabit.hexColor);
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppThemeColors.background500,
        leading: IconButton(
          icon: const Icon(Icons.keyboard_double_arrow_left, 
            size: 40, 
            color: Color.fromRGBO(0, 0, 0, 200),
            ),
          onPressed: () {
            goRouter.go(AppPaths.homeScreen.path);
          },
        ),
      ),
      backgroundColor: AppThemeColors.background500,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
          tag: selectedHabit.id,
          child: Icon(
            IconData(
              selectedHabit.iconHexId,
              fontFamily: "MaterialIcons",
            ),
            size: 200,
            color: habitColor,
          ),
              ),
              SizedBox(width: 16),
              Text(
          "${selectedHabit.todayValue} ${selectedHabit.unitLabel}",
          style: AppThemeTextStyles.defaultText.copyWith(
            color: habitColor,
            fontSize: 30,
            fontWeight: FontWeight.w800,
          ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
            child: Slider(
              value: selectedHabit.todayValue,
              min: 0,
              max: selectedHabit.maxValue,
              divisions: (selectedHabit.maxValue * 10).toInt(),
              onChanged: (value) {
                currentUserNotifier.editHabit(
                  selectedHabit.id,
                  selectedHabit.copyWith(todayValue: double.parse((value.clamp(0, selectedHabit.maxValue)).toStringAsFixed(1))),
                );
              },
              label: selectedHabit.todayValue.toStringAsFixed(1),
              activeColor: habitColor,
              inactiveColor: habitColor.withOpacity(0.5),
            ),
            ),
          Text(
            "Current Streak:          ${selectedHabit.stats.streak}",
            style: AppThemeTextStyles.defaultText.copyWith(
              color: habitColor,
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            "Best Streak:          ${selectedHabit.stats.longestStreak}",
            style: AppThemeTextStyles.defaultText.copyWith(
              color: habitColor,
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            "Total Days:          ${selectedHabit.stats.days.length}",
            style: AppThemeTextStyles.defaultText.copyWith(
              color: habitColor,
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
  }
