class Detail {
  String? _errorcode;

  Detail({String? errorcode}) {
    if (errorcode != null) {
      this._errorcode = errorcode;
    }
  }

  String? get errorcode => _errorcode;
  set errorcode(String? errorcode) => _errorcode = errorcode;

  Detail.fromJson(Map<String, dynamic> json) {
    _errorcode = json['errorcode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['errorcode'] = this._errorcode;
    return data;
  }
}
