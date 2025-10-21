import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// import all screens used in routing
import 'package:eduverse/features/splash/presentation/splash_screen.dart';
import 'package:eduverse/features/home/presentation/home.dart';



// --- ROUTES DEFINITION ---
Map<String, Widget Function(BuildContext)> getRoutes() {
  return {
    '/splash': (context) => const SplashScreen(),
    '/home': (context) => const home(),

  };
}


// --- GO ROUTER CONFIGURATION ---

final GoRouter appRouter = GoRouter(
  initialLocation: '/splash',
   routes:
      getRoutes().entries
          .map(
            (entry) => GoRoute(
              name: entry.key,
              path: entry.key,
              builder: (context, state) => entry.value(context),
            ),
          )
          .toList(),
  errorBuilder:
      (context, state) =>
          const Scaffold(body: Center(child: Text('Page not found'))),
);
