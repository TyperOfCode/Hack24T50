import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:step/data/repositories/user_handler.dart';
import 'package:step/domain/models/habit_model/habit_model.dart';
import 'package:step/global_logger.dart';
import 'package:step/presentation/common/styles/styles.dart';

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
    Color habitColor = Color(widget.habit.hexColor);

    return Column(
      children: [
        Text(
            "${widget.habit.todayValue} / ${widget.habit.dailyGoal} ${widget.habit.unitLabel}",
            style: AppThemeTextStyles.impactText.copyWith(
              color: habitColor,
            )),
        Gap(10),
        InkWell(
          onTap: () {
            userStateNotifier.incrementHabit(widget.habit.id);
          },
          onLongPress: () {
            //TODO: Stats page
            LOG.i("Should open stats page for ${widget.habit.name}");
          },
          customBorder: const CircleBorder(),
          splashColor: habitColor.withAlpha(100),
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 80,
                height: 80,
                child: CircularProgressIndicator(
                  value: widget.habit.todayValue / widget.habit.dailyGoal,
                  strokeWidth: 8.0,
                  valueColor: AlwaysStoppedAnimation<Color>(habitColor),
                  backgroundColor: Colors.grey.shade200,
                ),
              ),
              Column(
                children: [
                  Icon(
                    IconData(
                      widget.habit.iconHexId,
                      fontFamily: "MaterialIcons",
                    ),
                    size: 30,
                    color: habitColor,
                  ),
                  Text(
                    "${(widget.habit.todayValue / widget.habit.dailyGoal * 100).toStringAsFixed(1)}%",
                    style: AppThemeTextStyles.buttonText
                        .copyWith(color: habitColor),
                  )
                ],
              ),
            ],
          ),
        ),
        const Gap(10),
        Text(
          widget.habit.name,
          style: AppThemeTextStyles.buttonText.copyWith(color: habitColor),
        ),
      ],
    );
  }
}
