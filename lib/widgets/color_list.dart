import 'package:flutter/material.dart';
import '../consts.dart';

class Colorlist extends StatelessWidget {
  const Colorlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        Customcolor(
          colour: Colors.red,
        ),
        Customcolor(
          colour: Color.fromARGB(255, 3, 94, 168),
        ),
        Customcolor(
          colour: Colors.cyan,
        ),
        Customcolor(
          colour: Colors.orange,
        ),
        Customcolor(
          colour: Colors.pink,
        ),
        Customcolor(
          colour: Color.fromARGB(255, 49, 95, 54),
        ),
        Customcolor(
          colour: Colors.purple,
        ),
        Customcolor(
          colour: Colors.green,
        ),
      ],
    );
  }
}

class Customcolor extends StatelessWidget {
  const Customcolor({
    super.key,
    required this.colour,
  });
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () => color = colour,
        child: CircleAvatar(
          backgroundColor: colour,
        ),
      ),
    );
  }
}
