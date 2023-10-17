import 'package:flutter/material.dart';
import 'custom_text_widget.dart';

class Languages extends StatefulWidget {
  const Languages({super.key});

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  @override
  Widget build(BuildContext context) {
    return const Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.center,
      children: [
        Text(
          'Google offered in:',
          style: TextStyle(color: Colors.white),
        ),
        CustomTextButtons(title: 'हिन्दी', isLanguage: true,),
        CustomTextButtons(title: 'বাংলা', isLanguage: true),
        CustomTextButtons(title: 'తెలుగు', isLanguage: true),
        CustomTextButtons(title: 'मराठी', isLanguage: true),
        CustomTextButtons(title: 'தமிழ்', isLanguage: true),
        CustomTextButtons(title: 'ગુજરાતી', isLanguage: true),
        CustomTextButtons(title: 'ಕನ್ನಡ', isLanguage: true),
        CustomTextButtons(title: 'മലയാളം', isLanguage: true),
        CustomTextButtons(title: 'ਪੰਜਾਬੀ', isLanguage: true),
      ],
    );
  }
}
