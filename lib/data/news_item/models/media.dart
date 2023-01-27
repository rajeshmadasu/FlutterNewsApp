// ignore_for_file: unnecessary_getters_setters

import '../models/mediametadata.dart';

class Media {
  String? _type;
  String? _subtype;
  String? _caption;
  String? _copyright;
  int? _approvedForSyndication;
  List<MediaMetadata>? _mediaMetadata;

  Media(
      {String? type,
      String? subtype,
      String? caption,
      String? copyright,
      int? approvedForSyndication,
      List<MediaMetadata>? mediaMetadata}) {
    if (type != null) {
      _type = type;
    }
    if (subtype != null) {
      _subtype = subtype;
    }
    if (caption != null) {
      _caption = caption;
    }
    if (copyright != null) {
      _copyright = copyright;
    }
    if (approvedForSyndication != null) {
      _approvedForSyndication = approvedForSyndication;
    }
    if (mediaMetadata != null) {
      _mediaMetadata = mediaMetadata;
    }
  }

  String? get type => _type;
  set type(String? type) => _type = type;
  String? get subtype => _subtype;
  set subtype(String? subtype) => _subtype = subtype;
  String? get caption => _caption;
  set caption(String? caption) => _caption = caption;
  String? get copyright => _copyright;
  set copyright(String? copyright) => _copyright = copyright;
  int? get approvedForSyndication => _approvedForSyndication;
  set approvedForSyndication(int? approvedForSyndication) =>
      _approvedForSyndication = approvedForSyndication;
  List<MediaMetadata>? get mediaMetadata => _mediaMetadata;
  set mediaMetadata(List<MediaMetadata>? mediaMetadata) =>
      _mediaMetadata = mediaMetadata;

  Media.fromJson(Map<String, dynamic> json) {
    _type = json['type'];
    _subtype = json['subtype'];
    _caption = json['caption'];
    _copyright = json['copyright'];
    _approvedForSyndication = json['approved_for_syndication'];
    if (json['media-metadata'] != null) {
      _mediaMetadata = <MediaMetadata>[];
      json['media-metadata'].forEach((v) {
        _mediaMetadata!.add(MediaMetadata.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = _type;
    data['subtype'] = _subtype;
    data['caption'] = _caption;
    data['copyright'] = _copyright;
    data['approved_for_syndication'] = _approvedForSyndication;
    if (_mediaMetadata != null) {
      data['media-metadata'] = _mediaMetadata!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  void forEach(Null Function(dynamic element) param0) {}
}
