import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hint,
    this.linesnumber,
  }) : super(key: key);
  final String hint;
  final int? linesnumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: TextField(
        onChanged: (value) {},
        textAlign: TextAlign.start,
        maxLines: linesnumber,
        decoration: InputDecoration(
          // enabledBorder: OutlineInputBorder(),
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.cyan[300],
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 1.2,
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1.2,
              color: Colors.cyan[300]!,
            ),
          ),
        ),
      ),
    );
  }
}
