import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:step/data/repositories/user_handler.dart';
import 'package:step/domain/models.dart';
import 'package:step/gen/assets.gen.dart';
import 'package:step/presentation/screens/add_habit_screen/components/add_habit_button.dart';
import 'package:step/presentation/screens/add_habit_screen/components/habit_tile.dart';
import 'package:step/presentation/common/styles/styles.dart';
import 'package:step/routes.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var goRouter = ref.watch(goRouterProvider);

    User currentUser = ref.watch(userStateProvider);

    DateTime now = DateTime.now();

    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! < 0) {
          goRouter.go(AppPaths.buddyScreen.path);
        }
      },
      child: Scaffold(
        backgroundColor: AppThemeColors.background500,
        body: Stack(
          children: [
            Positioned.fill(
              child: SvgPicture.asset(
                Assets.homeSplash,
                alignment: Alignment.topCenter,
              ),
            ),
            Positioned(
              left: 30,
              top: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    now.day.toString(),
                    style: AppThemeTextStyles.impactText.copyWith(
                      fontSize: 50,
                      color: AppThemeColors.accent,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const Gap(5),
                  Text(
                    DateFormat('MMMM').format(now),
                    style: AppThemeTextStyles.impactText.copyWith(
                      fontSize: 50,
                      color: AppThemeColors.accent,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              right: 20,
              top: 180,
              child: AddHabitButton(),
            ),
            Positioned(
              right: 10,
              top: 20,
              child: IconButton(
                onPressed: () => goRouter.go(AppPaths.buddyScreen.path),
                icon: const Icon(
                  Icons.keyboard_double_arrow_left,
                  size: 60,
                ),
                color: AppThemeColors.background500.withAlpha(150),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  createHabitGridView(currentUser.habits) // GridView
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget createHabitGridView(List<Habit> habits) {
  return SizedBox(
    height: 510,
    child: ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Colors.black,
            Colors.black,
            Colors.transparent
          ],
          stops: [0.0, 0.025, 0.9, 1],
        ).createShader(bounds);
      },
      blendMode: BlendMode.dstIn,
      child: GridView.count(
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
      ),
    ),
  );
}
