import 'package:go_router/go_router.dart';
import 'package:router/screens/home_screen.dart';
import 'package:router/screens/login_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    GoRoute(path: '/home', builder: (context, state) => HomeScreen(username: state.extra as String)),
  ]
);