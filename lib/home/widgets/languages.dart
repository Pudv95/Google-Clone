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
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.center,
      children: [
        'हिन्दी','বাংলা','తెలుగు','मराठी','தமிழ்','ગુજરાતી','ಕನ್ನಡ','ಕನ್ನಡ','മലയാളം','ਪੰਜਾਬੀ'
      ].map((language) =>
           CustomTextButtons(title: language,isLanguage: true,)
      ).toList(),
    );
  }
}
