import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:step/domain/models/user_stat_model/user_stat_model.dart';
import 'package:step/presentation/common/styles/styles.dart';
import 'package:step/presentation/screens/buddy_screen/components/buddy_tile/habit_icon.dart';

class BuddyTile extends StatelessWidget {
  final UserStats? userStat;
  const BuddyTile({
    super.key,
    required this.userStat,
  });

  @override
  Widget build(BuildContext context) {
    if (userStat == null) {
      return Container();
    }
    UserStats notNullUserStat = userStat as UserStats;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            height: 125,
            width: 300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.person,
                        color: AppThemeColors.secondary,
                      ),
                      const Gap(5),
                      Text(
                        notNullUserStat.displayedName,
                        style: AppThemeTextStyles.defaultText.copyWith(
                          color: AppThemeColors.secondary,
                          fontWeight: FontWeight.w900,
                          fontSize: AppFontSizes.header1Size,
                        ),
                      ),
                      const Spacer(),
                      notNullUserStat.lastActivity != null
                          ? Text(
                              notNullUserStat.lastActivity ?? "",
                              style: AppThemeTextStyles.defaultText.copyWith(
                                color: AppThemeColors.secondary,
                                fontWeight: FontWeight.w900,
                                fontSize: AppFontSizes.footer,
                              ),
                            )
                          : Container(),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      ...notNullUserStat.displayedHabits
                          .map((e) => Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                child: HabitIcon(
                                    username: notNullUserStat.displayedName,
                                    habit: e,
                                    size: 50),
                              ))
                          .toList(),
                    ],
                  )
                ],
              ),
            )),
      ],
    );
  }
}
