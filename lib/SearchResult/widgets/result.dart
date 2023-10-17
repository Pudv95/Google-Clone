import 'package:flutter/material.dart';
import 'package:googleclone/searchModel/search_model.dart';
import 'package:url_launcher/url_launcher.dart';

class Result extends StatelessWidget {
  final SearchModel searchModel;
  const Result({super.key, required this.searchModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        color: const Color.fromRGBO(32, 33, 36, 1),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: () {
                    launchUrl(Uri.parse(searchModel.link ?? "www.google.com"));
                  },
                  child: Text(//#4f8dddff
                    searchModel.title ?? "got some error",
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Color.fromRGBO(79, 141, 221, 1)),
                  )),
              TextButton(
                  onPressed: () {
                    launchUrl(
                        Uri.parse(searchModel.formattedURL ?? "www.google.com"));
                  },
                  child: Text(
                    searchModel.formattedURL ?? "getting some error",
                    style: TextStyle(color: Color.fromRGBO(79, 141, 221, 1)),
                  )),
              Text(searchModel.snippet ?? "Getting some error",style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }
}
