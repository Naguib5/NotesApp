
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widget/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kPrimeryColor,
      ),
      height: 40,
      width: 340,
      child: TextButton(
        onPressed: (){},
        child: Text(
          'Add',style: TextStyle(
          color: Colors.black,
        ),),
      ),
    );
  }
}
