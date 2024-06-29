import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:step/routes.dart';

class AddHabitButton extends ConsumerWidget {
  const AddHabitButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var goRouter = ref.watch(goRouterProvider);
    const color = Color.fromRGBO(255, 255, 255, 10);

    return InkWell(onTap: () {
        // userStateNotifier.addHabit(FakeData.placeholder);
        goRouter.go(AppPaths.addHabitScreen.path);
      },
      customBorder: const CircleBorder(),
      splashColor: color,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: CircularProgressIndicator(
              value: 100,
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
