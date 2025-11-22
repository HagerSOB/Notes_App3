
import 'package:flutter/material.dart';
import 'package:notes_app3/custom_widget/widget/colors_list_view.dart';

import '../../Models/Note_modle.dart';
import '../../constants.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
  final NoteModle note;

  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex=Kcolors.indexOf(Color(widget.note.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Kcolors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                widget.note.color=Kcolors[index].value;
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                isChoose: currentIndex == index,
                color: Kcolors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
