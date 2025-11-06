import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app3/custom_widget/custem_app_bar.dart';
import 'package:notes_app3/views/notes_view_list.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBarr(title: 'Note', icon: FontAwesomeIcons.search,),
          Expanded(child: NotsListView()),
        ],
      ),
    );
  }
}


