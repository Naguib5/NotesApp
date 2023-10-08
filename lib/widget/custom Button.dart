import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isloading = false});
  final bool isloading;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kPrimeryColor,
        ),
        height: 40,
        width: 340,
        child: Center(
          child: isloading
              ? SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
        ),
      ),
    );
  }
}
