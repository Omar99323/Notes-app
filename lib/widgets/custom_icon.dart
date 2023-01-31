import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, required this.onpress});
  final Icon icon;
  final VoidCallback? onpress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.08),
      ),
      child: IconButton(
        icon: icon,
        onPressed: onpress,
      ),
    );
  }
}
