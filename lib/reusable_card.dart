import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color? color;
  final Widget? child;
  final VoidCallback? onPressed;

  const ReusableCard({super.key, this.color, this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color ?? const Color(0xFF1D1E33),
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}