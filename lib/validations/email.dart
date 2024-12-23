import 'package:flutter_easy_form/flutter_easy_form.dart';

final _validationRegex = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

class EmailValidation extends EasyFormValidation<String> {
  final String message;

  EmailValidation({this.message = "Email inválido"});

  @override
  Future<String?> run(String? value, EasyFormState formState) async {
    if (value != null || value!.isEmpty) return null;
    if (!_validationRegex.hasMatch(value)) return message;

    return null;
  }
}
