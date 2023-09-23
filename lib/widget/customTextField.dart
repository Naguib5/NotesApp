
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widget/constant.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.hintText,this.maxline=1});
  final String hintText;
  final int  maxline ;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(top: 30),
      child: TextField(
        maxLines: maxline,
        cursorColor: kPrimeryColor,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
              color: kPrimeryColor
          ),
          border: BuildBorder(color: Colors.white),
          enabledBorder: BuildBorder(color: Colors.white),
          focusedBorder:  BuildBorder(color: kPrimeryColor),
        ),
      ),
    );
  }
}
OutlineInputBorder BuildBorder({ Color color=Colors.white}) {
  return OutlineInputBorder(
    borderSide:BorderSide(
      color: color,
    ) ,
    borderRadius: BorderRadius.circular(12),
  );
}