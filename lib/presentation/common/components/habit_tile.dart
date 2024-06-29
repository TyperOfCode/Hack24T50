import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:step/data/repositories/user_handler.dart';
import 'package:step/domain/models/habit_model/habit_model.dart';
import 'package:step/global_logger.dart';
import 'package:step/presentation/common/styles/styles.dart';
import 'package:step/presentation/controllers/app/app_controller.dart';
import 'package:step/routes.dart';

class HabitTile extends ConsumerStatefulWidget {
  final Habit habit;
  const HabitTile({
    super.key,
    required this.habit,
  });

  @override
  ConsumerState<HabitTile> createState() => HabitTileState();
}

class HabitTileState extends ConsumerState<HabitTile> {
  @override
  Widget build(BuildContext context) {
    var userStateNotifier = ref.watch(userStateProvider.notifier);
    var goRouter = ref.watch(goRouterProvider);
    var appStateNotifier = ref.watch(appStateProvider.notifier);
    Color habitColor = Color(widget.habit.hexColor);

    String formattedTodayValue = widget.habit.todayValue.toString();

    if (widget.habit.todayValue == widget.habit.todayValue.roundToDouble()) {
      // today value is integer
      formattedTodayValue = widget.habit.todayValue.round().toString();
    }

    bool isCompleted = widget.habit.todayValue >= widget.habit.dailyGoal;

    return Column(
      children: [
        InkWell(
          onTap: () {
            userStateNotifier.incrementHabit(widget.habit.id);
          },
          onLongPress: () {
            LOG.i("Should open stats page for ${widget.habit.name}");
            appStateNotifier.selectHabitForStats(widget.habit);
            goRouter.go(AppPaths.statScreen.path);
          },
          customBorder: const CircleBorder(),
          splashColor: habitColor.withAlpha(100),
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: CircularProgressIndicator(
                  value: widget.habit.todayValue / widget.habit.dailyGoal,
                  strokeWidth: 10.0,
                  valueColor: AlwaysStoppedAnimation<Color>(habitColor),
                  backgroundColor: AppThemeColors.background500,
                  strokeCap: StrokeCap.round,
                ),
              ),
              Container(
                width: 100,
                height: 100,
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
                    Hero(
                      tag: widget.habit.id,
                      child: Icon(
                        IconData(
                          widget.habit.iconHexId,
                          fontFamily: "MaterialIcons",
                        ),
                        size: 40,
                        color: isCompleted
                            ? AppThemeColors.background500
                            : habitColor,
                      ),
                    ),
                    !widget.habit.isMeasurable
                        ? Container()
                        : Text(
                            "$formattedTodayValue ${widget.habit.unitLabel}",
                            style: AppThemeTextStyles.buttonText.copyWith(
                              color: isCompleted
                                  ? AppThemeColors.background500
                                  : habitColor,
                            ),
                          )
                  ],
                ),
              ),
            ],
          ),
        ),
        Gap(10),
        isCompleted
            ? Icon(Icons.check_circle, color: habitColor, size: 20)
            : Text(
                widget.habit.name,
                style: AppThemeTextStyles.defaultText.copyWith(
                  color: habitColor,
                ),
              )
      ],
    );
  }
}
