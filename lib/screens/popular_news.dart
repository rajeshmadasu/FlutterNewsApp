import 'package:flutter/material.dart';
import '../domain/news_popular_item.dart';
import '../data/news_item/respository/news_popular_repository.dart';
import '../widget/news_list_item.dart';

class PopularNews extends StatefulWidget {
  final String title;
  const PopularNews(this.title, {super.key});

  @override
  State<PopularNews> createState() => _PopularNewsState();
}

class _PopularNewsState extends State<PopularNews> {
  List<NewsPopularItem>? _popularNewsItem;

  Future<void> loadPopularNews() async {
    List<NewsPopularItem>? list =
        (await (NewsPopularListRepositoryImpl().getPopularNewsItems()));

    setState(() {
      _popularNewsItem = list;
    });
  }

  @override
  void initState() {
    super.initState();
    loadPopularNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _popularNewsItem == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : RefreshIndicator(
              onRefresh: loadPopularNews,
              child: ListView.builder(
                itemBuilder: (context, index) =>
                    NewsListItem(newsPopularItem: _popularNewsItem![index]),
                itemCount: _popularNewsItem!.length,
              ),
            ),
    );
  }
}
