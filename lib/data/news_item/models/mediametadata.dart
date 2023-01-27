// ignore_for_file: unnecessary_getters_setters

class MediaMetadata {
  String? _url;
  String? _format;
  int? _height;
  int? _width;

  MediaMetadata({String? url, String? format, int? height, int? width}) {
    if (url != null) {
      _url = url;
    }
    if (format != null) {
      _format = format;
    }
    if (height != null) {
      _height = height;
    }
    if (width != null) {
      _width = width;
    }
  }

  String? get url => _url;
  set url(String? url) => _url = url;
  String? get format => _format;
  set format(String? format) => _format = format;
  int? get height => _height;
  set height(int? height) => _height = height;
  int? get width => _width;
  set width(int? width) => _width = width;

  MediaMetadata.fromJson(Map<String, dynamic> json) {
    _url = json['url'];
    _format = json['format'];
    _height = json['height'];
    _width = json['width'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = _url;
    data['format'] = _format;
    data['height'] = _height;
    data['width'] = _width;
    return data;
  }
}
