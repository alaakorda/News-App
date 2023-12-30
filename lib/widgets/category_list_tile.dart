import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/widgets/category_tile.dart';

class CategoryListTile extends StatelessWidget {
  final List<ArticleModel> articals;

  CategoryListTile({
    super.key, required this.articals
  });



  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articals.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: NewsTile(
              articleModel: articals[index],
            ),
          );
        },
      ),
    );
  }
}
