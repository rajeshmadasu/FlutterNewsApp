// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import '../data/news_item/models/media.dart';
import '../data/news_item/models/result.dart';

class NewsPopularItem {
  String? title;
  String? description;
  String? publishedDate;
  List<String>? images;
  String? url;
  NewsPopularItem({
    this.title,
    this.description,
    this.publishedDate,
    this.images,
    this.url,
  });

  List<String>? addImagesFromMetaData(List<Media>? mediaList) {
    List<String>? tempImages = [];
    mediaList!.length > 0
        ? mediaList[0].mediaMetadata?.forEach((metaData) {
            tempImages.add(metaData.url!);
          })
        : tempImages;

    return tempImages;
  }

  NewsPopularItem mapToNewsPopularItem(Results results) {
    return NewsPopularItem(
        title: results.title,
        description: results.abstract ?? description,
        publishedDate: results.publishedDate ?? publishedDate,
        images: addImagesFromMetaData(results.media),
        url: results.url);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'publishedDate': publishedDate,
      'images': images,
    };
  }

  factory NewsPopularItem.fromMap(Map<String, dynamic> map) {
    return NewsPopularItem(
      title: map['title'] != null ? map['title'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      publishedDate:
          map['publishedDate'] != null ? map['publishedDate'] as String : null,
      images: map['images'] != null
          ? List<String>.from((map['images'] as List<String>))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory NewsPopularItem.fromJson(String source) =>
      NewsPopularItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NewsPopularItem(title: $title, description: $description, publishedDate: $publishedDate, images: $images)';
  }

  @override
  bool operator ==(covariant NewsPopularItem other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.description == description &&
        other.publishedDate == publishedDate &&
        listEquals(other.images, images);
  }

  @override
  int get hashCode {
    return title.hashCode ^
        description.hashCode ^
        publishedDate.hashCode ^
        images.hashCode;
  }
}
