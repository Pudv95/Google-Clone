import 'package:flutter/material.dart';


class CustomTextButtons extends StatefulWidget {
  final String title;
  final bool isLanguage;
  const CustomTextButtons(
      {super.key, required this.title, required this.isLanguage});

  @override
  State<CustomTextButtons> createState() => _CustomTextButtonsState();
}

class _CustomTextButtonsState extends State<CustomTextButtons> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: const ButtonStyle(tapTargetSize: MaterialTapTargetSize.shrinkWrap),
      child: Text(
        widget.title,
        style: TextStyle(color: (widget.isLanguage)?Colors.blueAccent:const Color(0xff70757a)),
      ),
    );
  }
}