import 'package:flutter/material.dart';

class TextFormFieldComponent extends StatelessWidget {
  final String label;
  final TextEditingController? controller;

  const TextFormFieldComponent({
    required this.label,
    this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      )
    );
  }
}
