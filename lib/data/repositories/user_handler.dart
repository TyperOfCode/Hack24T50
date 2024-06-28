import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:step/data/fake_data.dart';
import 'package:step/domain/models.dart';

class UserStateNotifier extends StateNotifier<User> {
  User? currentUser;
  UserStateNotifier(this.currentUser)
      : super(
          currentUser ?? FakeData.baseFakeUser,
        );

  User? getCurrentUser() {
    return state;
  }

  void addHabit() {
    // TODO: Implement add habit
  }

  void editHabit(String habitId) {
    // TODO: Implement edit habit
  }
}

final userStateProvider = StateNotifierProvider<UserStateNotifier, User>(
  (ref) => UserStateNotifier(FakeData.baseFakeUser),
);
