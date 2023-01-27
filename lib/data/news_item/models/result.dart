// ignore_for_file: unnecessary_getters_setters

import '../models/media.dart';

class Results {
  String? _uri;
  String? _url;
  int? _id;
  int? _assetId;
  String? _source;
  String? _publishedDate;
  String? _updated;
  String? _section;
  String? _subsection;
  String? _nytdsection;
  String? _adxKeywords;
  String? _column;
  String? _byline;
  String? _type;
  String? _title;
  String? _abstract;
  List<String>? _desFacet;
  List<String>? _orgFacet;
  List<String>? _perFacet;
  List<String>? _geoFacet;
  List<Media>? _media;
  int? _etaId;

  Results(
      {String? uri,
      String? url,
      int? id,
      int? assetId,
      String? source,
      String? publishedDate,
      String? updated,
      String? section,
      String? subsection,
      String? nytdsection,
      String? adxKeywords,
      String? column,
      String? byline,
      String? type,
      String? title,
      String? abstract,
      List<String>? desFacet,
      List<String>? orgFacet,
      List<String>? perFacet,
      List<String>? geoFacet,
      List<Media>? media,
      int? etaId}) {
    if (uri != null) {
      _uri = uri;
    }
    if (url != null) {
      _url = url;
    }
    if (id != null) {
      _id = id;
    }
    if (assetId != null) {
      _assetId = assetId;
    }
    if (source != null) {
      _source = source;
    }
    if (publishedDate != null) {
      _publishedDate = publishedDate;
    }
    if (updated != null) {
      _updated = updated;
    }
    if (section != null) {
      _section = section;
    }
    if (subsection != null) {
      _subsection = subsection;
    }
    if (nytdsection != null) {
      _nytdsection = nytdsection;
    }
    if (adxKeywords != null) {
      _adxKeywords = adxKeywords;
    }
    if (column != null) {
      _column = column;
    }
    if (byline != null) {
      _byline = byline;
    }
    if (type != null) {
      _type = type;
    }
    if (title != null) {
      _title = title;
    }
    if (abstract != null) {
      _abstract = abstract;
    }
    if (desFacet != null) {
      _desFacet = desFacet;
    }
    if (orgFacet != null) {
      _orgFacet = orgFacet;
    }
    if (perFacet != null) {
      _perFacet = perFacet;
    }
    if (geoFacet != null) {
      _geoFacet = geoFacet;
    }
    if (media != null) {
      _media = media;
    }
    if (etaId != null) {
      _etaId = etaId;
    }
  }

  String? get uri => _uri;
  set uri(String? uri) => _uri = uri;
  String? get url => _url;
  set url(String? url) => _url = url;
  int? get id => _id;
  set id(int? id) => _id = id;
  int? get assetId => _assetId;
  set assetId(int? assetId) => _assetId = assetId;
  String? get source => _source;
  set source(String? source) => _source = source;
  String? get publishedDate => _publishedDate;
  set publishedDate(String? publishedDate) => _publishedDate = publishedDate;
  String? get updated => _updated;
  set updated(String? updated) => _updated = updated;
  String? get section => _section;
  set section(String? section) => _section = section;
  String? get subsection => _subsection;
  set subsection(String? subsection) => _subsection = subsection;
  String? get nytdsection => _nytdsection;
  set nytdsection(String? nytdsection) => _nytdsection = nytdsection;
  String? get adxKeywords => _adxKeywords;
  set adxKeywords(String? adxKeywords) => _adxKeywords = adxKeywords;
  String? get column => _column!;
  set column(String? column) => _column = column;
  String? get byline => _byline;
  set byline(String? byline) => _byline = byline;
  String? get type => _type;
  set type(String? type) => _type = type;
  String? get title => _title;
  set title(String? title) => _title = title;
  String? get abstract => _abstract;
  set abstract(String? abstract) => _abstract = abstract;
  List<String>? get desFacet => _desFacet;
  set desFacet(List<String>? desFacet) => _desFacet = desFacet;
  List<String>? get orgFacet => _orgFacet;
  set orgFacet(List<String>? orgFacet) => _orgFacet = orgFacet;
  List<String>? get perFacet => _perFacet;
  set perFacet(List<String>? perFacet) => _perFacet = perFacet;
  List<String>? get geoFacet => _geoFacet;
  set geoFacet(List<String>? geoFacet) => _geoFacet = geoFacet;
  List<Media>? get media => _media;
  set media(List<Media>? media) => _media = media;
  int? get etaId => _etaId;
  set etaId(int? etaId) => _etaId = etaId;

  Results.fromJson(Map<String, dynamic> json) {
    _uri = json['uri'];
    _url = json['url'];
    _id = json['id'];
    _assetId = json['asset_id'];
    _source = json['source'];
    _publishedDate = json['published_date'];
    _updated = json['updated'];
    _section = json['section'];
    _subsection = json['subsection'];
    _nytdsection = json['nytdsection'];
    _adxKeywords = json['adx_keywords'];
    _column = json['column'];
    _byline = json['byline'];
    _type = json['type'];
    _title = json['title'];
    _abstract = json['abstract'];
    _desFacet = json['des_facet'].cast<String>();
    _orgFacet = json['org_facet'].cast<String>();
    _perFacet = json['per_facet'].cast<String>();
    _geoFacet = json['geo_facet'].cast<String>();
    if (json['media'] != null) {
      _media = <Media>[];
      json['media'].forEach((v) {
        _media!.add(Media.fromJson(v));
      });
    }
    _etaId = json['eta_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uri'] = _uri;
    data['url'] = _url;
    data['id'] = _id;
    data['asset_id'] = _assetId;
    data['source'] = _source;
    data['published_date'] = _publishedDate;
    data['updated'] = _updated;
    data['section'] = _section;
    data['subsection'] = _subsection;
    data['nytdsection'] = _nytdsection;
    data['adx_keywords'] = _adxKeywords;
    data['column'] = _column;
    data['byline'] = _byline;
    data['type'] = _type;
    data['title'] = _title;
    data['abstract'] = _abstract;
    data['des_facet'] = _desFacet;
    data['org_facet'] = _orgFacet;
    data['per_facet'] = _perFacet;
    data['geo_facet'] = _geoFacet;
    if (_media != null) {
      data['media'] = _media!.map((v) => v.toJson()).toList();
    }
    data['eta_id'] = _etaId;
    return data;
  }
}
