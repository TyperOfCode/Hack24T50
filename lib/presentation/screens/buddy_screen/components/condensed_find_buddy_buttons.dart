import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:step/presentation/common/styles/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class CondensedFindBuddyButtons extends StatelessWidget {
  const CondensedFindBuddyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Gap(20),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 30,
            color: AppThemeColors.background500,
          ),
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(AppThemeColors.accent),
          ),
        ),
        const Gap(20),
        IconButton(
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
      ],
    );
  }
}
