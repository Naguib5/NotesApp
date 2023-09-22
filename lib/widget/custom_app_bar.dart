import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_search_icon.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Row(
        children: [
          Text(
            'Notes',
            style: TextStyle(fontSize: 30),
          ),
          Spacer(),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}