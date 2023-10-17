import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:googleclone/SearchResult/search_result.dart';
import 'package:googleclone/searchModel/search_model.dart';
import 'package:http/http.dart' as http;
class MySearchBar extends StatelessWidget {
  final TextEditingController searchController;
  final String tag;
  const MySearchBar({super.key, required this.searchController,required this.tag});

  Future<void> getSearchData(context,String query) async {
    var request = http.Request('GET', Uri.parse('https://www.googleapis.com/customsearch/v1?key=AIzaSyBxMwLzAhJ58R1kIt7jNeomXEm_2Exsp_g&q=$query&cx=5311d6e53f2da48e6'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      Map<String,dynamic> response1 = jsonDecode(await response.stream.bytesToString());
      List<SearchModel> searchResults = (response1['items'] as List)
          .map((item) => SearchModel.fromMap(item))
          .toList();

      String correctSpelling = "shi_hai";
      if(response1.containsKey('spelling')){
        correctSpelling = response1['spelling']['correctedQuery'];
      }
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SearchResult(searchResults: searchResults,searchController: searchController,correctSpelling: correctSpelling,)),
      );
      print(searchResults[0].image);
    }
    else {
      print(response.reasonPhrase);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child:Material(
        type: MaterialType.transparency,
      child:TextField(
        controller: searchController,
        onSubmitted: (query) async {
          getSearchData(context,query);
        },
        style: const TextStyle(color: Colors.white),
        decoration:  InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: Colors.white)),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('assets/Icons/search-icon.svg',colorFilter: const ColorFilter.mode(Colors.black54, BlendMode.srcIn),),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('assets/Icons/mic-icon.svg',),
          ),
          suffixIconColor: Colors.white,
          prefixIconColor: Colors.white,
          focusedBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(50),borderSide: const BorderSide(color: Colors.white70)),
          enabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(50),borderSide: const BorderSide(color: Colors.white12)),
        ),
      ),
        ),
    );
  }
}
