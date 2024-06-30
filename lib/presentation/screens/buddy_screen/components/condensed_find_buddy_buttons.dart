import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:step/data/repositories/user_handler.dart';
import 'package:step/global_logger.dart';
import 'package:step/presentation/common/styles/styles.dart';
import 'package:step/presentation/screens/buddy_screen/components/find_buddy_button.dart';
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
          child: FindBuddyButton(
            condensed: true,
          ),
        ),
        const Gap(20),
        Hero(
          tag: "invf",
          child: ElevatedButton(
            onPressed: () async {
              // lol
              // final Uri url =
              //     Uri.parse('https://www.youtube.com/watch?v=dQw4w9WgXcQ');
              // if (!await launchUrl(url)) {
              //   return;
              // }
            },
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(AppThemeColors.secondary),
            ),
            child: const SizedBox(
              height: 50,
              child: Center(
                child: Icon(
                  Icons.group_add_rounded,
                  size: 25,
                  color: AppThemeColors.background500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
