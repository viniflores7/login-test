import 'package:flutter/material.dart';
import 'package:flutter_easy_form/flutter_easy_form.dart';
import 'package:go_router/go_router.dart';
import 'package:login_practice/ui/widgets/button.dart';
import 'package:login_practice/validations/index.dart';
import 'package:styled_widget/styled_widget.dart';

class RegisterUserView extends StatelessWidget {
  const RegisterUserView({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<EasyFormState>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: EasyForm(
        key: formKey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/login-logo.png',
                ),
                EasyFormField(
                  attribute: 'email',
                  validations: [RequiredValidation(), EmailValidation()],
                  builder: (
                    EasyFormFieldState fieldState,
                    EasyFormState formState,
                  ) {
                    return TextField(
                      controller: fieldState.textEditingController,
                      focusNode: fieldState.focusNode,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        errorText: fieldState.error,
                        focusColor: Colors.blue,
                      ),
                      keyboardType: TextInputType.emailAddress,
                    );
                  },
                ).padding(bottom: 16),
                EasyFormField(
                  attribute: 'password',
                  validations: [RequiredValidation(), PasswordValidation()],
                  builder: (
                    EasyFormFieldState fieldState,
                    EasyFormState formState,
                  ) {
                    return TextField(
                      controller: fieldState.textEditingController,
                      focusNode: fieldState.focusNode,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        errorText: fieldState.error,
                        focusColor: Colors.blue,
                      ),
                      obscureText: true,
                    );
                  },
                ).padding(bottom: 16),
                Row(
                  children: [
                    AppButton(
                      onPressed: () => context.pop(),
                      label: "<-",
                    ).padding(right: 6),
                    AppButton(
                      label: 'Registrar',
                      onPressed: () async {
                        final isValid = await formKey.currentState!.validate();
                        if (isValid) {
                          debugPrint(
                            'Dados do formulário: ${formKey.currentState!.values}',
                          );
                        } else {
                          debugPrint('Formulário inválido!');
                        }
                      },
                    ).expanded(flex: 2),
                  ],
                ),
              ],
            ),
          ),
        ),
      ).padding(all: 16),
    );
  }
}
