import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final String hintText;
  final bool obsecureText;

  const CustomTextFormField({
    Key? key,
    required this.text,
    required this.hintText,
    this.obsecureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        const SizedBox(height: 8.0),
        Form(
          child: TextFormField(
            obscureText: obsecureText,
            style: TextStyle(color: Colors.blue),
            decoration: InputDecoration(
              hintText: hintText,
            ),
          ),
        ),
        const SizedBox(height: 24.0),
      ],
    );
  }
}
