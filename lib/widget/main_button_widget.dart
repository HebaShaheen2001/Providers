import 'package:flutter/material.dart';
import 'package:providers/app_material/app_colors.dart';

class MainButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Widget? widget;
  final double width;
  final double height;
  final Color color;
  final double borderRadius;

  const MainButtonWidget({
    super.key,
    required this.onPressed,
    this.text = '',
    this.widget,
    this.width = double.infinity,
    this.height = 50,
    this.color = AppColors.primryColor,
    this.borderRadius = 10,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        backgroundColor: color,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: widget ?? Text(text),
    );
  }
}
