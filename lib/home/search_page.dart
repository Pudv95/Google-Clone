import 'dart:math';

import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(32, 33, 36, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(32, 33, 36, 1),
        ),
        drawer: const Drawer(
          backgroundColor: Color.fromRGBO(32, 33, 36, 1),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: const AssetImage('assets/images/google-logo.png'),width: width*0.6,),
              const SizedBox(height: 10,),
              Padding(
                padding: width<750?EdgeInsets.fromLTRB((width*0.08), 0, (width*0.08), 0): EdgeInsets.fromLTRB(min(width*0.3,200), 0, min(width*0.3,200), 0),
                child: TextField(
                  controller: searchController,
                  style: TextStyle(color: Colors.white),
                  decoration:  InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: Colors.white)),
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.mic),
                    suffixIconColor: Colors.white,
                    prefixIconColor: Colors.white,
                    focusedBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(50),borderSide: const BorderSide(color: Colors.white)),
                    enabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(50),borderSide: const BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
