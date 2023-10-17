import 'dart:math';
import 'package:flutter/material.dart';
import 'package:googleclone/home/widgets/searchBar.dart';
import 'package:googleclone/SearchResult/widgets/result.dart';
import '../searchModel/search_model.dart';
import 'package:googleclone/home/widgets/searchBar.dart';

class SearchResult extends StatelessWidget {
  final List<SearchModel> searchResults;
  final String correctSpelling;
  final TextEditingController searchController;
  const SearchResult(
      {super.key,
      required this.searchResults,
      required this.searchController,
      required this.correctSpelling});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(40, 40, 40, 1),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: width < 750
                  ? EdgeInsets.fromLTRB((width * 0.08), 20, (width * 0.08), 0)
                  : EdgeInsets.fromLTRB(
                      min(width * 0.3, 200), 0, min(width * 0.3, 200), 0),
              child: MySearchBar(
                searchController: searchController,
                tag: 'searchBar',
              ),
            ),
            SizedBox(
              height: height * 0.86,
              child: ListView.builder(
                itemCount: searchResults.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      if (correctSpelling != "shi_hai" && index == 0)
                        TextButton(
                          onPressed: () {
                            searchController.text = correctSpelling;
                            MySearchBar(searchController: searchController, tag: 'hero',).getSearchData(context, correctSpelling);
                          },
                          child: Text(
                            'Search instead for $correctSpelling ?',
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange),
                          ),
                        ),
                      Divider(
                        color: Colors.grey,
                        indent: 0,
                        endIndent: 0,
                      ),
                      Result(searchModel: searchResults[index]),
                      Divider(
                        color: Colors.grey,
                        indent: 0,
                        endIndent: 0,
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
