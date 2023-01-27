import 'package:flutter_nyc_news/domain/news_popular_item.dart';
import '../models/newsitem.dart';

class NewsItemMapper {
  List<NewsPopularItem>? newPopularItemList = [];

  List<NewsPopularItem>? mapToPopularItems(NewsItem newsItem) {
    // if (newPopularItemList != null && newPopularItemList!.isNotEmpty) {
    //   return newPopularItemList;
    // }
    newsItem.results?.forEach((element) {
      newPopularItemList!.add(NewsPopularItem().mapToNewsPopularItem(element));
    });

    return newPopularItemList;
  }
}
