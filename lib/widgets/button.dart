import 'package:flutter/material.dart';

class Buttton extends StatelessWidget {
  const Buttton({required this.title,
    Key? key,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            color: Colors.cyan[300], borderRadius: BorderRadius.circular(8)),
        width: double.infinity,
        child:  Center(
            child: Text(title,
          style:const TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        )),
      ),
    );
  }
}
