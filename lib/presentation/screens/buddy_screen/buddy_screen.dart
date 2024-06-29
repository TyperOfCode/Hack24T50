import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:step/global_logger.dart';
import 'package:step/presentation/common/styles/styles.dart';
import 'package:step/routes.dart';

class BuddyPage extends ConsumerWidget {
  const BuddyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var goRouter = ref.watch(goRouterProvider);

    LOG.i("Opened buddy screen");

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
                'assets/buddy_splash.svg',
                alignment: Alignment.topCenter,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Buddy Screen",
                    style: AppThemeTextStyles.defaultText,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
