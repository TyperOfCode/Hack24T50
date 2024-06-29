import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:step/data/fake_data.dart';
import 'package:step/data/repositories/user_handler.dart';
import 'package:step/presentation/common/styles/styles.dart';
import 'package:step/presentation/screens/screens.dart';
import 'package:step/routes.dart';

class AddHabitButton extends ConsumerWidget {
  const AddHabitButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const color = AppThemeColors.background500;
    var userStateNotifier = ref.watch(userStateProvider.notifier);

    return InkWell(
      onTap: () {
        // userStateNotifier.addHabit(FakeData.placeholder);
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AddHabitScreen();
            });
      },
      customBorder: const CircleBorder(),
      radius: 100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: CircularProgressIndicator(
              value: 1,
              strokeWidth: 8.0,
              valueColor: const AlwaysStoppedAnimation<Color>(color),
              backgroundColor: Colors.grey.shade200,
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                IconData(
                  0xe047,
                  fontFamily: "MaterialIcons",
                ),
                size: 30,
                color: color,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
