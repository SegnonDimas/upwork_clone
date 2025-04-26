import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? labelText;
  final TextEditingController? controller;
  const AppTextField({
    super.key,
    this.controller,
    this.prefixIcon,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          label: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.red.shade700, width: 4),
          ),
        ),
      ),
    );
  }
}
