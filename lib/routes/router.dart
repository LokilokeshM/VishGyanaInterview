// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:interview_app/features/ui/dashboard/dashboard_screen.dart';
import 'package:interview_app/features/ui/route_screen/ui/route_screen.dart';
import 'package:interview_app/features/ui/splash_screen/splash_logo_screen.dart';
import 'package:interview_app/features/ui/splash_screen/splash_screen.dart';

import 'navigation_provider.dart';
import 'router_path.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');

final goRouterProvider = Provider<GoRouter>((ref) {
  final notifier = ref.read(goRouterNotifierProvider);

  return GoRouter(
    navigatorKey: _rootNavigator,
    initialLocation: "/",
    refreshListenable: notifier,
    redirect: (context, state) {
      final isLoginPage = state.pageKey == '/login';
      final isLoggedIn = notifier.isLoggedIn;
      bool enabledPath = noAuthNavigation(state);
      if (!isLoggedIn && !enabledPath) {
        return "/";
      }
      if (isLoggedIn && isLoginPage) {
        return RouterPath.SPLASH_LOGO_SCREEN;
      }
      return null;
    },
    routes: [
      GoRoute(
        path: RouterPath.SPLASH_SCREEN,
        name: RouterPath.SPLASH_SCREEN,
        builder: (context, state) => OnboardingScreen(),
      ),
      GoRoute(
        path: "/",
        name: RouterPath.SPLASH_LOGO_SCREEN,
        builder: (context, state) => const SplashLogoScreen(),
      ),
      GoRoute(
        path: RouterPath.DASHBOARD,
        name: RouterPath.DASHBOARD,
        builder: (context, state) => const DashboardScreen(),
      ),
      GoRoute(
        path: RouterPath.ROUTES,
        name: RouterPath.ROUTES,
        builder: (context, state) => const RouteScreen(),
      ),
    ],
    errorBuilder: (context, state) => Container(
      // errorMsg: state.error.toString(),
      key: state.pageKey,
    ),
  );
});
bool noAuthNavigation(GoRouterState state) {
  switch (state.fullPath) {
    case RouterPath.DASHBOARD:
    case RouterPath.SPLASH_LOGO_SCREEN:
    case RouterPath.SPLASH_SCREEN:
    case RouterPath.ROUTES:
      return true;
    default:
      return false;
  }
}
