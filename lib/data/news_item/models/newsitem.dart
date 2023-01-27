// ignore_for_file: unnecessary_getters_setters

import 'result.dart';

class NewsItem {
  String? _status;
  String? _copyright;
  int? _numResults;
  List<Results>? _results;

  NewsItem(
      {String? status,
      String? copyright,
      int? numResults,
      List<Results>? results}) {
    if (status != null) {
      _status = status;
    }
    if (copyright != null) {
      _copyright = copyright;
    }
    if (numResults != null) {
      _numResults = numResults;
    }
    if (results != null) {
      _results = results;
    }
  }

  String? get status => _status;
  set status(String? status) => _status = status;
  String? get copyright => _copyright;
  set copyright(String? copyright) => _copyright = copyright;
  int? get numResults => _numResults;
  set numResults(int? numResults) => _numResults = numResults;
  List<Results>? get results => _results;
  set results(List<Results>? results) => _results = results;

  NewsItem.fromJson(Map<String, dynamic> json) {
    if (json['status'].toString() == "OK") _status = json['status'];
    _copyright = json['copyright'];
    _numResults = json['num_results'];
    if (json['results'] != null) {
      _results = <Results>[];
      json['results'].forEach((v) {
        _results!.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = _status;
    data['copyright'] = _copyright;
    data['num_results'] = _numResults;
    if (_results != null) {
      data['results'] = _results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
