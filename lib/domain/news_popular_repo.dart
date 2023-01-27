import 'news_popular_item.dart';

abstract class NewsPopularListRepo {
  Future<List<NewsPopularItem>?> getPopularNewsItems();
}
