import 'package:dio/dio.dart';
import 'package:newsapp/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(
    this.dio,
  );

  Future<List<ArticleModel>> getTopHeadLineNews(
      {required String categorytyp}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=$categorytyp');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      // print(articles);
      List<ArticleModel> articalesList = [];
      for (var articale in articles) {
        ArticleModel articaleModel = ArticleModel(
            image: articale['urlToImage'],
            title: articale['title'],
            subtitle: articale['description']);
        articalesList.add(articaleModel);
      }
      return articalesList;
    } catch (e) {
      return [];
    }
  }
}
