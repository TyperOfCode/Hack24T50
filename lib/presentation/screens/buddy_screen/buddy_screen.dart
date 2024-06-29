import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:step/data/repositories/user_handler.dart';
import 'package:step/domain/models/user_model/user_model.dart';
import 'package:step/gen/assets.gen.dart';
import 'package:step/presentation/common/styles/styles.dart';

import 'components/expanded_find_buddy_buttons.dart';
import 'package:step/routes.dart';

import 'components/condensed_find_buddy_buttons.dart';
import 'components/buddy_tile/buddy_tile.dart';

class BuddyPage extends ConsumerWidget {
  const BuddyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var goRouter = ref.watch(goRouterProvider);
    var userStateNotifier = ref.watch(userStateProvider.notifier);
    var userState = ref.watch(userStateProvider);

    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          goRouter.go(AppPaths.homeScreen.path);
        }
      },
      child: Scaffold(
        backgroundColor: AppThemeColors.background500,
        body: Stack(
          children: [
            Positioned.fill(
              child: SvgPicture.asset(
                Assets.buddySplash,
                alignment: Alignment.topCenter,
              ),
            ),
            Positioned(
              left: 10,
              top: 20,
              child: IconButton(
                onPressed: () => goRouter.go(AppPaths.homeScreen.path),
                icon: const Icon(
                  Icons.keyboard_double_arrow_right,
                  size: 60,
                ),
                color: AppThemeColors.background500.withAlpha(150),
              ),
            ),
            Positioned(
              right: 30,
              top: 200,
              child: Text(
                "Buddies",
                style: AppThemeTextStyles.impactText.copyWith(
                  fontSize: 50,
                  color: AppThemeColors.secondary,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Gap(300),
                  _buildBuddyScreen(
                    userState,
                    userStateNotifier,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildBuddyScreen(User user, UserStateNotifier userStateNotifier) {
  if (user.buddyIds.isEmpty) {
    return ExpandedFindBuddyButtons();
  }

  return Column(
    children: [
      CondensedFindBuddyButtons(),
      Container(
        constraints: BoxConstraints(maxHeight: 400),
        child: ListView(children: [
          ...user.buddyIds.map(
            (buddyId) => Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  BuddyTile(userStat: userStateNotifier.getUserStats(buddyId)),
            ),
          )
        ]),
      ),
    ],
  );
}
