import 'package:flutter/material.dart';

abstract class AppFormField extends StatelessWidget {
  const AppFormField({
    super.key,
  });

  factory AppFormField.text({
    Key? key,
    required String label,
    required String hint,
    String? Function(String?)? validator,
  }) =>
      _AppTextFormField(
        key: key,
        label: label,
        hint: hint,
        validator: validator,
      );
}

class _AppTextFormField extends AppFormField {
  final String label;
  final String hint;
  final String? Function(String?)? validator;

  const _AppTextFormField({
    super.key,
    required this.label,
    required this.hint,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      maxLines: 1,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: const OutlineInputBorder(),
      ),
      validator: validator,
    );
  }
}
