import 'package:flutter/material.dart';
import 'package:googleclone/searchModel/search_model.dart';
import 'package:url_launcher/url_launcher.dart';

class Result extends StatelessWidget {
  final SearchModel searchModel;
  const Result({super.key, required this.searchModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            searchModel.title ?? "Getting Some Error",
            style: TextStyle(fontSize: 25),
          ),
          TextButton(
              onPressed: () {
                launchUrl(Uri.parse(searchModel.link ?? "www.google.com"));
              },
              child: Text(searchModel.link ?? "getting some error",style: TextStyle(color: Colors.blue),)),
          TextButton(
              onPressed: () {
                launchUrl(Uri.parse(searchModel.formattedURL ?? "www.google.com"));
              },
              child: Text(searchModel.formattedURL ?? "getting some error",style: TextStyle(color: Colors.blue),)),
          Text(searchModel.snippet ?? "Getting some error"),
        ],
      ),
    );
  }
}
