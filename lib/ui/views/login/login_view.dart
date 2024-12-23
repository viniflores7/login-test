import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_practice/ui/widgets/button.dart';
import 'package:styled_widget/styled_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/login-logo.png',
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                focusColor: Colors.blue,
              ),
              keyboardType: TextInputType.emailAddress,
            ).padding(bottom: 16),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Senha',
                focusColor: Colors.blue,
              ),
              obscureText: true,
            ).padding(bottom: 16),
            Row(
              children: [
                AppButton(
                  onPressed: () => context.pop(),
                  label: "<-",
                ).padding(right: 6),
                AppButton(
                  label: 'Logar',
                  onPressed: () async {
                    final String email = emailController.text;
                    final String password = passwordController.text;

                    debugPrint("email:$email | password:$password");
                    // await _validateLogin(email, password);
                  },
                ).expanded(flex: 2),
              ],
            ),
          ],
        ).padding(all: 16),
      ),
    );
  }
}
