import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:step/presentation/screens/screens.dart';

enum AppPaths {
  buddyScreen("/buddy"),
  homeScreen("/"),
  addHabitScreen("/add-habit"),
  statScreen("/stat"),
  notFoundScreen("/:_(.*)");

  const AppPaths(this.path);
  final String path;
}

Provider<GoRouter> goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: AppPaths.homeScreen.path,
        builder: (BuildContext context, GoRouterState state) => HomePage(),
      ),
      GoRoute(
        path: AppPaths.buddyScreen.path,
        builder: (BuildContext context, GoRouterState state) => BuddyPage (),
      ),
      GoRoute(
        path: AppPaths.addHabitScreen.path,
        builder: (BuildContext context, GoRouterState state) => AddHabitScreen (),
      ),
      GoRoute(
        path: AppPaths.statScreen.path,
        builder: (BuildContext context, GoRouterState state) => StatScreen (),
      ),
    ],
  );
});
