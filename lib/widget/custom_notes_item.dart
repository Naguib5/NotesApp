import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/EditNoteViews.dart';

class CustomNotesItem extends StatelessWidget {
  const CustomNotesItem({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return EditNoteView();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffFFCD79), borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 18, left: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  'flutter tips',
                  style: TextStyle(fontSize: 26, color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    'Biuld your carear with naguib mousa',
                    style: TextStyle(
                        fontSize: 16, color: Colors.black.withOpacity(0.5)),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.trash,
                      color: Colors.black,
                      size: 22,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  'may 21,2023',
                  style: TextStyle(
                      fontSize: 16, color: Colors.black.withOpacity(0.5)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
