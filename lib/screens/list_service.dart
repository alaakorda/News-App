import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/widgets/category_list_tile.dart';

class ListService extends StatefulWidget {
  const ListService({super.key, required this.category});
  final String category;
  @override
  State<ListService> createState() => _ListServiceState();
}

class _ListServiceState extends State<ListService> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future =
        NewsService(Dio()).getTopHeadLineNews(categorytyp: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return CategoryListTile(
            articals: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Text(
                "Oops there was an error ! Please try again :)",
                style: TextStyle(fontSize: 16),
              ),
            ),
          );
        } else {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
