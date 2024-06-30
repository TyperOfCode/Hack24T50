import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:step/presentation/common/styles/styles.dart';

SnackBar GenerateUserNotif({
  required String title,
  String? message,
  Color color = AppThemeColors.primary,
  Color textColor = AppThemeColors.text,
  IconData icon = Icons.notifications,
  int duration = 2,
}) {
  return SnackBar(
    behavior: SnackBarBehavior.floating,
    duration: Duration(seconds: duration),
    backgroundColor: color,
    content: SizedBox(
      height: 100,
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 30, color: textColor),
              const Gap(10),
              Text(
                title,
                style: AppThemeTextStyles.titleText.copyWith(
                  color: textColor,
                  fontSize: AppFontSizes.header1Size,
                ),
              ),
            ],
          ),
          ...(message != null
              ? [
                  const Spacer(),
                  Text(
                    message,
                    style: AppThemeTextStyles.titleText.copyWith(
                      color: textColor,
                      fontSize: AppFontSizes.header2Size,
                    ),
                  ),
                  const Spacer(),
                ]
              : [])
        ],
      ),
    ),
  );
}
