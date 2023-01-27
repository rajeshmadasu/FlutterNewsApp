import 'package:flutter/material.dart';
import 'package:flutter_nyc_news/screens/news_detail_view.dart';

import '../domain/news_popular_item.dart';

class NewsListItem extends StatelessWidget {
  final NewsPopularItem newsPopularItem;
  const NewsListItem({super.key, required this.newsPopularItem});

  @override
  Widget build(BuildContext context) {
    Route createRoute() {
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => NewsDetailView(
          title: newsPopularItem.title,
          url: newsPopularItem.url,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      );
    }

    return Card(
      elevation: 2,
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(createRoute());
        },
        leading: newsPopularItem.images!.length > 0
            ? ClipOval(
                child: Image.network(newsPopularItem.images![0].toString()))
            : const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/images/empty.jpg")),
        title: Text(newsPopularItem.title!),
        subtitle: Container(
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
          child: Text(
              softWrap: false,
              maxLines: 2,
              overflow: TextOverflow.ellipsis, // new

              "${newsPopularItem.description!}\n\nPublished:${newsPopularItem.publishedDate}"),
        ),
        isThreeLine: true,
      ),
    );
  }
}
