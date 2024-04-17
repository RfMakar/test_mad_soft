import 'package:flutter/material.dart';

class CardApp extends StatelessWidget {
  CardApp({super.key, required this.child, this.onTap});
  final Widget child;
  final void Function()? onTap;
  final borderRadius = BorderRadius.circular(12);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: borderRadius,
        boxShadow: const [
          BoxShadow(
            blurRadius: 12,
            offset: Offset(0, 3),
            color: Colors.black12,
          ),
        ],
      ),
      child: Material(
        borderRadius: borderRadius,
        color: Colors.white,
        child: InkWell(
          borderRadius: borderRadius,
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: child,
          ),
        ),
      ),
    );
  }
}
