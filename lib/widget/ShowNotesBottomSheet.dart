
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; 
import 'package:notes_app/widget/customTextField.dart';
class ShowNotesBottomSheet extends StatelessWidget {
  const ShowNotesBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CustomTextField(
            hintText: 'Title',
            edgeInsets: EdgeInsets.only(top: 40,left: 10),

          ),
        CustomTextField(
          hintText: 'Content',
          edgeInsets: EdgeInsets.only(top: 100,left: 10),
        ),
          SizedBox(height: 120,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.tealAccent,
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
          )
        ],
      ),
    );
  }


}
