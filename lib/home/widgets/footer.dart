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
    return Wrap(
      alignment: WrapAlignment.center,
      children: ['About', 'Advertising', 'Business', 'How Search Works', 'Privacy', 'Terms', 'Settings',]
          .map(
            (title) => Padding(
              padding: const EdgeInsets.only(right: 5),
              child: CustomTextButtons(title: title),
            ),
          )
          .toList(),
    );
  }
}
