import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Function() onPressed;
  final String label;

  const AppButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: _AppButtonStyle.buttonStyle,
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _AppButtonStyle {
  static final ButtonStyle buttonStyle = ButtonStyle(
    backgroundColor: WidgetStateProperty.all(Colors.blue),
    foregroundColor: WidgetStateProperty.all(Colors.white),
    padding: WidgetStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    ),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    elevation: WidgetStateProperty.resolveWith<double>((states) {
      if (states.contains(WidgetState.pressed)) return 8.0;
      return 4.0;
    }),
  );
}
