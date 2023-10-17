import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:googleclone/SearchResult/search_result.dart';
import 'package:googleclone/searchModel/search_model.dart';

class MySearchBar extends StatelessWidget {
  final TextEditingController searchController;
  final String tag;
  const MySearchBar({super.key, required this.searchController,required this.tag});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: TextField(
        controller: searchController,
        onSubmitted: (query) {
          SearchModel temp1 = SearchModel(title: 'HelloWorld', link: 'HelloWorld', snippet: 'HelloWorld', formattedURL: 'HelloWorld', image: 'https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg');
          SearchModel temp2 = SearchModel(title: 'HelloWorld', link: 'HelloWorld', snippet: 'HelloWorld', formattedURL: 'HelloWorld', image: 'https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg');
          SearchModel temp3 = SearchModel(title: 'HelloWorld', link: 'HelloWorld', snippet: 'HelloWorld', formattedURL: 'HelloWorld', image: 'https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg');
          SearchModel temp4 = SearchModel(title: 'HelloWorld', link: 'HelloWorld', snippet: 'HelloWorld', formattedURL: 'HelloWorld', image: 'https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg');
          List<SearchModel> searchList = [temp1,temp2,temp3,temp4];
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SearchResult(searchResults: searchList,searchController: searchController,)),
          );
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
    );
  }
}
