import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_practice/ui/widgets/button.dart';
import 'package:styled_widget/styled_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/login-logo.png',
          ),
          AppButton(
            onPressed: () => context.push('/register'),
            label: "Cadastro de usuário",
          ).padding(bottom: 16),
          AppButton(
            onPressed: () => context.push('/login'),
            label: "Login de usuário",
          ).padding(bottom: 16),
        ],
      ).padding(all: 16),
    );
  }
}
