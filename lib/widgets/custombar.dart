import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
    required this.title,
    required this.icon,
    this.onpress,
  }) : super(key: key);
  final String title;
  final VoidCallback? onpress;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 32,
          ),
        ),
        CustomIcon(
          onpress: onpress,
          icon: icon,
        ),
      ],
    );
  }
}
