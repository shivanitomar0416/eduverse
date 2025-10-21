import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:eduverse/features/splash/presentation/splash_screen.dart';

// --- Global Keys ---
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorHomeKey = GlobalKey<NavigatorState>(debugLabel: 'shellHome');
final _shellNavigatorCoursesKey = GlobalKey<NavigatorState>(debugLabel: 'shellCourses');
final _shellNavigatorProfileKey = GlobalKey<NavigatorState>(debugLabel: 'shellProfile');


/// Placeholder for your custom Bottom Navigation Bar widget.
class BottomNavigation extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavigation({super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Courses'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
      currentIndex: selectedIndex,
      onTap: onItemTapped,
    );
  }
}

// --- Essential Screen Stubs (Replace with your actual screen classes) ---
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text("Login")));
}
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text("Signup")));
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text("Home")));
}
class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text("Courses")));
}
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text("Profile")));
}

// --- GO ROUTER CONFIGURATION ---

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  routes: [
    // 1. Root Route for Initial Auth Check
    GoRoute(
      path: '/',
      redirect: (context, state) async {
        await Future.delayed(const Duration(milliseconds: 1000));
        const bool isLoggedIn = false;
        return isLoggedIn ? '/home' : '/login';
      },
      builder: (context, state) => const SplashScreen(),
    ),

    // 2. Auth Routes
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    GoRoute(path: '/signup', builder: (context, state) => const SignupScreen()),

    // 3. Main App Shell (Bottom Navigation)
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return Scaffold(
          body: navigationShell,
          bottomNavigationBar: BottomNavigation(
            selectedIndex: navigationShell.currentIndex,
            onItemTapped: (index) => navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            ),
          ),
        );
      },
      branches: [
        StatefulShellBranch(navigatorKey: _shellNavigatorHomeKey, routes: [
          GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
        ]),
        StatefulShellBranch(navigatorKey: _shellNavigatorCoursesKey, routes: [
          GoRoute(path: '/courses', builder: (context, state) => const CoursesScreen()),
        ]),
        StatefulShellBranch(navigatorKey: _shellNavigatorProfileKey, routes: [
          GoRoute(path: '/profile', builder: (context, state) => const ProfileScreen()),
        ]),
      ],
    ),
  ],
  errorBuilder: (context, state) => const Scaffold(body: Center(child: Text('Page not found'))),
);
