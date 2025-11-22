import 'package:flutter/material.dart';
import 'package:notes_app3/custom_widget/custom_search_icon.dart';


class CustomAppBarr extends StatelessWidget {
  const CustomAppBarr({super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title,style: const TextStyle(fontSize: 29),),Spacer(),
        CustomSearchIcon(onPressed: onPressed,icon: icon),
      ],
    );
  }
}
