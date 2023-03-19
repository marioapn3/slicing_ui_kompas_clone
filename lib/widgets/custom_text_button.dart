import 'package:flutter/material.dart';


/// Custom text button with a fixed height
class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.text,
    this.height = 48,
    this.style,
    this.onPressed,
  }) : super(key: key);
  final String text;
  final TextStyle? style;
  final VoidCallback? onPressed;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: style,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
