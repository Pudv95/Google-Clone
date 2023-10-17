import 'package:flutter/material.dart';
import 'package:googleclone/searchModel/search_model.dart';

class Result extends StatelessWidget {
  final SearchModel searchModel;
  const Result({super.key,required this.searchModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(searchModel.title ?? "Getting Some Error"),
          Text(searchModel.link ?? "getting some error"),
          Text(searchModel.formattedURL ?? 'getting some error'),
          Text(searchModel.snippet ??  "Getting some error"),
          Image(image: NetworkImage(searchModel.image ?? "https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg"))
        ],
      ),
    );
  }
}
