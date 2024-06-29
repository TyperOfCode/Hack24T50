import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:step/presentation/popups/popups.dart';
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
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: HomePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: animation.status != AnimationStatus.reverse
                    ? Offset(-1.0, 0.0)
                    : Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: Offset.zero,
                  end: animation.status == AnimationStatus.reverse
                      ? Offset(1.0, 0.0)
                      : Offset(-1.0, 0.0),
                ).animate(secondaryAnimation),
                child: child,
              ),
            );
          },
        ),
      ),
      GoRoute(
        path: AppPaths.buddyScreen.path,
        builder: (BuildContext context, GoRouterState state) => BuddyPage(),
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: BuddyPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: animation.status != AnimationStatus.reverse
                    ? Offset(1.0, 0.0)
                    : Offset(-1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: Offset.zero,
                  end: animation.status == AnimationStatus.reverse
                      ? Offset(-1.0, 0.0)
                      : Offset(1.0, 0.0),
                ).animate(secondaryAnimation),
                child: child,
              ),
            );
          },
        ),
      ),
      GoRoute(
        path: AppPaths.addHabitScreen.path,
        builder: (BuildContext context, GoRouterState state) => AddHabitPopup (),
      ),
      GoRoute(
        path: AppPaths.statScreen.path,
        builder: (BuildContext context, GoRouterState state) => StatScreen (),
      ),
    ],
  );
});
