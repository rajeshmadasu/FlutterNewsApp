import 'package:flutter/material.dart';
import 'package:flutter_nyc_news/widget/shimmer_list.dart';
import '../domain/news_popular_item.dart';
import '../data/news_item/respository/news_popular_repository.dart';
import '../widget/news_list_item.dart';

class PopularNews extends StatelessWidget {
  final String title;
  const PopularNews(this.title, {super.key});

  Future<List<NewsPopularItem>?> loadPopularNews() async {
    return await (NewsPopularListRepositoryImpl().getPopularNewsItems());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: RefreshIndicator(
        onRefresh: loadPopularNews,
        child: FutureBuilder(
            future: loadPopularNews(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const ShimmerListWidget();
              } else if (snapshot.connectionState == ConnectionState.done) {
                return ListView.builder(
                  itemBuilder: (context, index) => NewsListItem(
                      newsPopularItem:
                          (snapshot.data as List<NewsPopularItem>)[index]),
                  itemCount: snapshot.data!.length,
                );
              } else if (snapshot.hasError) {
                return const Text("Something went wrong",
                    style: TextStyle(color: Colors.cyan, fontSize: 36));
              } else {
                return Text('State: ${snapshot.connectionState}');
              }
            }),
      ),
    );
  }
}
