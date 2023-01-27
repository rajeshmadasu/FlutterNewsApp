import 'detail.dart';

class Fault {
  String? _faultstring;
  Detail? _detail;

  Fault({String? faultstring, Detail? detail}) {
    if (faultstring != null) {
      this._faultstring = faultstring;
    }
    if (detail != null) {
      this._detail = detail;
    }
  }

  String? get faultstring => _faultstring;
  set faultstring(String? faultstring) => _faultstring = faultstring;
  Detail? get detail => _detail;
  set detail(Detail? detail) => _detail = detail;

  Fault.fromJson(Map<String, dynamic> json) {
    _faultstring = json['faultstring'];
    _detail = json['detail'] != null ? Detail.fromJson(json['detail']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['faultstring'] = _faultstring;
    if (_detail != null) {
      data['detail'] = _detail!.toJson();
    }
    return data;
  }
}
