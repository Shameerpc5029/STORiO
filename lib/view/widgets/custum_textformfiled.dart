import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatelessWidget {
  const TextFormFieldCustom({
    super.key,
    required this.labelText,
    // required this.controller,
    required this.keyboardType,
    this.obscureText = false,
    this.suffix, required this.prefixIcon,
  });
  final bool obscureText;
  final String labelText;
  final IconData prefixIcon;
  // final TextEditingController controller;
  final TextInputType keyboardType;
  final Widget? suffix;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
      child: TextFormField(
        // controller: controller,

        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          suffixIcon: suffix,
          label: Text(
            labelText,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                10,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
