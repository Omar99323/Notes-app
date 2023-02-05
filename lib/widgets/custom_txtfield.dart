import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hint,
    this.linesnumber,
    this.onsaved, this.onchanged,
  }) : super(key: key);
  final String hint;
  final int? linesnumber;
  final void Function(String?)? onsaved;    
  final void Function(String?)? onchanged;    

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,),
      child: TextFormField(
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is required';
          } else {
            return null;
          }
        },
        onChanged: onchanged,
        onSaved: onsaved,
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
