import 'package:flutter_easy_form/flutter_easy_form.dart';

final _validationRegex = RegExp(r'^(?=.*\d).{7,}$');

class PasswordValidation extends EasyFormValidation<String> {
  final String message;

  PasswordValidation({
    this.message =
        'Senha inválida.\nDeve seguir as seguintes regras:\n- Senha deve conter mais de 6 caracteres\n- Deve conter um número',
  });

  @override
  Future<String?> run(String? value, EasyFormState formState) async {
    if (value != null || value!.isEmpty) return null;
    if (!_validationRegex.hasMatch(value)) return message;

    return null;
  }
}
