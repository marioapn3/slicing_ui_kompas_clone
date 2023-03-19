import 'package:flutter/material.dart';


class CustomFormFieldWidget extends StatelessWidget {
  const CustomFormFieldWidget({
    super.key,
    required this.labelText,
    this.controller,
    this.isObsecure = false,
  });

  final String labelText;
  final bool isObsecure;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          obscureText: isObsecure,
          style: const TextStyle(
            color: Colors.black
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                5,
              ),
            ),
            labelText: labelText,
          ),
        )
      ],
    );
  }
}
