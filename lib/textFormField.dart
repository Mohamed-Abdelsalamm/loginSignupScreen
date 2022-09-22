import 'package:flutter/material.dart';

class TextFieldTemp extends StatelessWidget {
  TextFieldTemp({
    Key? key,
    required this.hint,
    this.validation = 'Please enter text'
  }) : super(key: key);

  String? hint;
  String? validation;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
              color: Colors.grey[400],
              fontWeight: FontWeight.bold,
              fontSize: 13),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 0.1,
            ),
          ),
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "please enter your $hint" ;
          }
          return null;
        },
      ),
    );
  }
}
