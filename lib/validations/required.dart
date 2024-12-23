import 'package:flutter_easy_form/flutter_easy_form.dart';

class RequiredValidation<T> extends EasyFormValidation<T> {
  final String message;

  RequiredValidation({this.message = 'Campo obrigatório'});

  @override
  Future<String?> run(T? value, EasyFormState formState) async {
    if (value == null) return message;
    if (value is String && value.isEmpty) return message;

    return null;
  }
}
