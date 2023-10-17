import 'dart:math';
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
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(32, 33, 36, 1),
          appBar: AppBar(
            title:
              SizedBox(
                width: width*0.36,
                child: TabBar(
                    tabs: [
                      Tab(text: 'ALL',),
                      Tab(text: 'Image',),
                    ]
                ),
              ),
            actions: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 5, 10),
                child: IconButton(onPressed: (){}, icon: Icon(Icons.ice_skating)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: ElevatedButton(onPressed: (){}, child: Text('SignIn')),
              )
            ],
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
                  child: MySearchBar(searchController: searchController),
                ),
              ],
            ),

          ),
        ),
      ),
    );
  }
}


