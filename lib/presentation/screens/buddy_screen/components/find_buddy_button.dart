import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:step/data/repositories/user_handler.dart';
import 'package:step/presentation/common/styles/styles.dart';
import 'package:step/presentation/popups/notification/user_notif.dart';

class FindBuddyButton extends ConsumerStatefulWidget {
  final bool condensed;
  const FindBuddyButton({
    super.key,
    this.condensed = true,
  });

  @override
  ConsumerState<FindBuddyButton> createState() => _FindBuddyButtonState();
}

class _FindBuddyButtonState extends ConsumerState<FindBuddyButton> {
  bool isLoading = false;

  void pressed(UserStateNotifier userStateNotifier) {
    setState(() {
      isLoading = true;
    });

    Timer(
      const Duration(seconds: 1),
      () {
        setState(() {
          isLoading = false;
        });

        String? userId = userStateNotifier.getRandomUserId(
            excludeList: userStateNotifier.getCurrentUser().buddyIds);

        if (userId == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            GenerateUserNotif(
              title: "You're unique!",
              message:
                  "We can't seem to find a buddy for you, try again tomorrow?",
              duration: 4,
              textColor: AppThemeColors.background500,
              color: AppThemeColors.accent,
            ),
          );
          return;
        }

        userStateNotifier.addBuddy(userId);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var userStateNotifier = ref.watch(userStateProvider.notifier);
    return ElevatedButton(
      onPressed: () => pressed(userStateNotifier),
      style: const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppThemeColors.accent),
      ),
      child: SizedBox(
        width: widget.condensed ? null : 210,
        height: 50,
        child: Center(
          child: Row(
            children: [
              isLoading
                  ? const SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(
                        strokeWidth: 2.0,
                        color: Colors.white,
                      ),
                    )
                  : const Icon(
                      Icons.search,
                      size: 30,
                      color: AppThemeColors.background500,
                    ),
              ...(!widget.condensed
                  ? [
                      const Gap(10),
                      Text(
                        "Find me a buddy",
                        textAlign: TextAlign.center,
                        style: AppThemeTextStyles.impactText.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppThemeColors.background500,
                          fontSize: AppFontSizes.header1Size,
                        ),
                      )
                    ]
                  : []),
            ],
          ),
        ),
      ),
    );
  }
}
