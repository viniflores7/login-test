import 'package:go_router/go_router.dart';
import 'package:login_practice/ui/views/home/home_view.dart';
import 'package:login_practice/ui/views/login/login_view.dart';
import 'package:login_practice/ui/views/register_user/register_user_view.dart';

final GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterUserView(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginView(),
    ),
  ],
);
