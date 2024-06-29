import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:step/data/repositories/user_handler.dart';
import 'package:step/presentation/common/styles/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ExpandedFindBuddyButtons extends ConsumerWidget {
  const ExpandedFindBuddyButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var userStateNotifier = ref.watch(userStateProvider.notifier);

    return Column(
      children: [
        const Gap(20),
        Hero(
          tag: "findb",
          child: ElevatedButton(
            onPressed: () {
              // Find Buddy
              String userId = userStateNotifier.getRandomUserId(
                  excludeList: userStateNotifier.getCurrentUser().buddyIds);
              userStateNotifier.addBuddy(userId);
            },
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(AppThemeColors.accent),
            ),
            child: SizedBox(
              width: 210,
              height: 50,
              child: Center(
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      size: 30,
                      color: AppThemeColors.background500,
                    ),
                    const Gap(10),
                    Text(
                      "Find me a buddy",
                      textAlign: TextAlign.center,
                      style: AppThemeTextStyles.impactText.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppThemeColors.background500,
                        fontSize: AppFontSizes.header1Size,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const Gap(10),
        Divider(
          indent: 80,
          endIndent: 80,
          color: AppThemeColors.secondary.withAlpha(50),
        ),
        const Gap(10),
        Hero(
          tag: "invf",
          child: ElevatedButton(
            onPressed: () async {
              final Uri url =
                  Uri.parse('https://www.youtube.com/watch?v=dQw4w9WgXcQ');
              if (!await launchUrl(url)) {
                return;
              }
            },
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(AppThemeColors.secondary),
            ),
            child: SizedBox(
              width: 190,
              height: 50,
              child: Center(
                child: Row(
                  children: [
                    const Icon(
                      Icons.send,
                      size: 30,
                      color: AppThemeColors.background500,
                    ),
                    const Gap(10),
                    Text(
                      "Invite a friend",
                      textAlign: TextAlign.center,
                      style: AppThemeTextStyles.impactText.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppThemeColors.background500,
                        fontSize: AppFontSizes.header1Size,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
