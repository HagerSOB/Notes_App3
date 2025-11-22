import 'package:flutter/material.dart';
import 'package:notes_app3/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLine = 1, this.onSaved, this.onChanged});
  final String hint;
  final int maxLine;

  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onChanged ,
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty??true){
          return "Filed is required";
        }else{return null;}
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hint,
        border: bulidBorder(),
        focusedBorder: bulidBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder bulidBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
