import 'package:flutter/material.dart';
import 'package:notes_app/widget/notes_view_body.dart';

class Notes_view extends StatelessWidget {
  const Notes_view({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: notes_view_body(),

    );
  }
}
