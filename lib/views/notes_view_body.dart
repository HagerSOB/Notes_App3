import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app3/cuibts/notes_cubit/notes_cubit.dart';
import 'package:notes_app3/custom_widget/custem_app_bar.dart';
import 'package:notes_app3/views/notes_view_list.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NoteCubit>(context).fetchAllNotes();
    super.initState();
  }
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


