import '../../../domain/news_popular_item.dart';
import '../../../domain/news_popular_repo.dart';
import '../mapper/newsitem_mapper.dart';

import '../../../network/news_api.dart';

class NewsPopularListRepositoryImpl extends NewsPopularListRepo {
  @override
  Future<List<NewsPopularItem>?> getPopularNewsItems() async {
    final newsItem = await NewsAPI().fetchPopularNewsItems();
    return NewsItemMapper().mapToPopularItems(newsItem);
  }
}
