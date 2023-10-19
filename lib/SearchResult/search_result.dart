import 'dart:math';
import 'package:flutter/material.dart';
import 'package:googleclone/home/widgets/searchBar.dart';
import 'package:googleclone/SearchResult/widgets/result.dart';
import '../searchModel/search_model.dart';

class SearchResult extends StatefulWidget {
  final List<SearchModel> searchResults;
  final String correctSpelling;
  final TextEditingController searchController;
  final int start;
  const SearchResult(
      {super.key,
      required this.searchResults,
      required this.searchController,
      required this.correctSpelling,
      required this.start});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
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
                searchController: widget.searchController,
                tag: 'searchBar',
              ),
            ),
            SizedBox(
              height: height * 0.86,
              child: ListView.builder(
                itemCount: widget.searchResults.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      if (widget.correctSpelling != "shi_hai" && index == 0)
                        TextButton(
                          onPressed: () {
                            widget.searchController.text = widget.correctSpelling;
                            MySearchBar(
                              searchController: widget.searchController,
                              tag: 'hero',
                            ).getSearchData(context, widget.correctSpelling, widget.start,widget.searchResults,true);
                          },
                          child: Text(
                            'Search instead for ${widget.correctSpelling} ?',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.orange),
                          ),
                        ),
                      const Divider(
                        color: Colors.grey,
                        indent: 0,
                        endIndent: 0,
                      ),
                      Result(searchModel: widget.searchResults[index]),
                      const Divider(
                        color: Colors.grey,
                        indent: 0,
                        endIndent: 0,
                      ),
                      if (index == widget.searchResults.length - 1)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () {
                                  print(widget.searchResults);
                                    setState(() {
                                      MySearchBar(
                                        searchController: widget.searchController,
                                        tag: 'hero',
                                      ).getSearchData(context, widget.correctSpelling, widget.start+10,widget.searchResults,true);
                                    });
                                },
                                child: const Text(
                                  'More ->',
                                  style: TextStyle(color: Colors.blue),
                                )),
                          ],
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
