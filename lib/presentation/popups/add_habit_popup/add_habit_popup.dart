import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:step/data/repositories/user_handler.dart';
import 'package:step/domain/models.dart';
import 'package:step/presentation/common/styles/styles.dart';
import 'package:step/presentation/popups/popups.dart';
import 'package:step/routes.dart';

class AddHabitPopup extends ConsumerWidget {
  const AddHabitPopup({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var userNotifier = ref.watch(userStateProvider.notifier);
    User currentUser = ref.watch(userStateProvider);
    List<Habit> availableHabits = currentUser.availableHabits();

    return SuggestedHabitPopup();
  }
}
