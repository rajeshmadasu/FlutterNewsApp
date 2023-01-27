import 'dart:convert';
import 'package:http/http.dart' as http;

import '../data/news_item/models/newsitem.dart';

class NewsAPI {
  static const String nycApiUrl = "https://api.nytimes.com/svc";
  static const String popularNewsItems = "/mostpopular/v2/viewed/1.json";
  static const String apiKey = "GzKlkDn9y7m6yTN126dhOy3xNL88IcpU";

  Future<NewsItem> fetchPopularNewsItems() async {
    late NewsItem? newsPopularItems;
    final response = await http
        .get(Uri.parse("$nycApiUrl$popularNewsItems?api-key=$apiKey"));

    // return ApiResult.fromResponse(response);
    final newsItemsExtractedData =
        json.decode(response.body) as Map<String, dynamic>;

    if (newsItemsExtractedData.containsKey("fault")) {
      newsPopularItems = null;
    } else {
      final newsPopularItemsExtracted =
          NewsItem.fromJson(newsItemsExtractedData);

      newsPopularItems = newsPopularItemsExtracted;
    }

    return newsPopularItems!;
  }
}
