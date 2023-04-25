import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatelessWidget {
  const TextFormFieldCustom({
    super.key,
    required this.labelText,
    this.validator,
    this.keyboardType,
    this.controller,
    this.hintText,
    this.maxLines,
    this.suffix,
  });

  final String labelText;
  final String? Function(String? value)? validator;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? hintText;
  final int? maxLines;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 12,
        left: 6,
        right: 6,
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: labelText,
          hintText: hintText,
          suffix: suffix,
          contentPadding: const EdgeInsets.only(
            left: 12,
            right: 12,
          ),
        ),
        validator: validator,
        keyboardType: keyboardType,
        maxLines: maxLines,
      ),
    );
  }
}
