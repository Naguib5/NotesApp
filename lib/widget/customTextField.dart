import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {required this.hintText, this.maxline = 1, this.onSaved});
  final String hintText;
  final int maxline;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        onChanged: onSaved,
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'filed is required';
          } else {
            return null;
          }
        },
        maxLines: maxline,
        cursorColor: kPrimeryColor,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: kPrimeryColor),
          border: BuildBorder(color: Colors.white),
          enabledBorder: BuildBorder(color: Colors.white),
          focusedBorder: BuildBorder(color: kPrimeryColor),
        ),
      ),
    );
  }
}

OutlineInputBorder BuildBorder({Color color = Colors.white}) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: color,
    ),
    borderRadius: BorderRadius.circular(12),
  );
}
