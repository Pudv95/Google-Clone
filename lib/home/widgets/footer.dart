import 'package:flutter/material.dart';
import 'custom_text_widget.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return const Wrap(
      alignment: WrapAlignment.center,
      children:  [
        CustomTextButtons(title: 'About', isLanguage: false),
        SizedBox(width: 5),
        CustomTextButtons(title: 'Advertising', isLanguage: false),
        SizedBox(width: 5),
        CustomTextButtons(title: 'Business', isLanguage: false),
        SizedBox(width:5),
        CustomTextButtons( title: 'How Search Works', isLanguage: false),
        SizedBox(width: 5),
        CustomTextButtons(title: 'Privacy', isLanguage: false),
        SizedBox(width: 5),
        CustomTextButtons(title: 'Terms', isLanguage: false),
        SizedBox(width: 5),
        CustomTextButtons(title: 'Settings', isLanguage: false),
      ],
    );
  }
}
