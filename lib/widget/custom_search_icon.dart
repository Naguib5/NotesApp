
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return  Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16),
        ),
        child: IconButton(onPressed: (){}, icon: Icon(Icons.search)));
  }
}
