
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_search_icon.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 130,),
        Text('Notes',style: TextStyle(fontSize: 30),
        ),
        Spacer(),
       CustomSearchIcon(),
      ],
    );
  }
}