import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_search_icon.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({required this.icon,required this.text});
   final Icon icon;
   final String text ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Row(
        children: [
           Text(
            text,
            style: const TextStyle(fontSize: 30),
          ),
         const Spacer(),
          CustomSearchIcon(icon: icon,),
        ],
      ),
    );
  }
}