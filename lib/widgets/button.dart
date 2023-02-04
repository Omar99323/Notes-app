import 'package:flutter/material.dart';

class Buttton extends StatelessWidget {
  const Buttton({
    required this.title,
    Key? key,
    this.ontap,
    required this.isloading,
  }) : super(key: key);
  final String title;
  final bool isloading;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: GestureDetector(
        onTap: ontap,
        child: isloading
            ? const CircularProgressIndicator(
                color: Colors.black,
              )
            : Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.cyan[300],
                    borderRadius: BorderRadius.circular(8)),
                width: double.infinity,
                child: Center(
                    child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                )),
              ),
      ),
    );
  }
}
