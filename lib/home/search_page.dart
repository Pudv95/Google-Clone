import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:googleclone/home/widgets/searchBar.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset : false,
          backgroundColor: const Color.fromRGBO(32, 33, 36, 1),
          appBar: AppBar(
            title: SizedBox(
              width: width * 0.36,
              child: const TabBar(tabs: [
                Tab(
                  text: 'ALL',
                ),
                Tab(
                  text: 'Image',
                ),
              ]),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  child: SvgPicture.asset(
                    'assets/Icons/more-apps.svg',
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('SignIn')),
              )
            ],
            backgroundColor: const Color.fromRGBO(32, 33, 36, 1),
          ),
          drawer: const Drawer(
            backgroundColor: Color.fromRGBO(32, 33, 36, 1),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: const AssetImage('assets/images/google-logo.png'),
                width: width * 0.6,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: width < 750
                    ? EdgeInsets.fromLTRB((width * 0.08), 0, (width * 0.08), 0)
                    : EdgeInsets.fromLTRB(
                        min(width * 0.3, 200), 0, min(width * 0.3, 200), 0),
                child: MySearchBar(searchController: searchController),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  children: [
                    Text(
                      'Google offered in:',
                      style: TextStyle(color: Colors.white),
                    ),
                    CustomTextButtons(
                      title: 'हिन्दी',
                      isLanguage: true,
                    ),
                    CustomTextButtons(title: 'বাংলা', isLanguage: true),
                    CustomTextButtons(title: 'తెలుగు', isLanguage: true),
                    CustomTextButtons(title: 'मराठी', isLanguage: true),
                    CustomTextButtons(title: 'தமிழ்', isLanguage: true),
                    CustomTextButtons(title: 'ગુજરાતી', isLanguage: true),
                    CustomTextButtons(title: 'ಕನ್ನಡ', isLanguage: true),
                    CustomTextButtons(title: 'മലയാളം', isLanguage: true),
                    CustomTextButtons(title: 'ਪੰਜਾਬੀ', isLanguage: true),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.27,
              ),
              const Wrap(
                alignment: WrapAlignment.center,
                children:  [
                  CustomTextButtons(title: 'About', isLanguage: false),
                  SizedBox(width: 10),
                  CustomTextButtons(title: 'Advertising', isLanguage: false),
                  SizedBox(width: 10),
                  CustomTextButtons(title: 'Business', isLanguage: false),
                  SizedBox(width: 10),
                  CustomTextButtons( title: 'How Search Works', isLanguage: false),
                  SizedBox(width: 10),
                  CustomTextButtons(title: 'Privacy', isLanguage: false),
                  SizedBox(width: 10),
                  CustomTextButtons(title: 'Terms', isLanguage: false),
                  SizedBox(width: 10),
                  CustomTextButtons(title: 'Settings', isLanguage: false),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

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
