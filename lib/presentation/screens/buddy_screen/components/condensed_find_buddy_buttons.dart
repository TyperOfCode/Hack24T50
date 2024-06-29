import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:step/data/repositories/user_handler.dart';
import 'package:step/global_logger.dart';
import 'package:step/presentation/common/styles/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class CondensedFindBuddyButtons extends ConsumerWidget {
  const CondensedFindBuddyButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var userStateNotifier = ref.watch(userStateProvider.notifier);

    return Row(
      children: [
        const Gap(20),
        Hero(
          tag: "findb",
          child: IconButton(
            onPressed: () {
              // Find Buddy
              var user = userStateNotifier.getCurrentUser();

              String? userId =
                  userStateNotifier.getRandomUserId(excludeList: user.buddyIds);

              if (userId == null) {
                return;
              }

              userStateNotifier.addBuddy(userId);
            },
            icon: const Icon(
              Icons.search,
              size: 30,
              color: AppThemeColors.background500,
            ),
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(AppThemeColors.accent),
            ),
          ),
        ),
        const Gap(20),
        Hero(
          tag: "invf",
          child: IconButton(
            onPressed: () async {
              final Uri url =
                  Uri.parse('https://www.youtube.com/watch?v=dQw4w9WgXcQ');
              if (!await launchUrl(url)) {
                return;
              }
            },
            icon: const Icon(
              Icons.send,
              size: 30,
              color: AppThemeColors.background500,
            ),
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(AppThemeColors.secondary),
            ),
          ),
        ),
      ],
    );
  }
}
