import 'package:flutter/material.dart';

class MainOutlineButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const MainOutlineButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
