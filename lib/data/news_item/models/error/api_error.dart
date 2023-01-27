import 'fault.dart';

class ApiError {
  Fault? _fault;

  ApiError({Fault? fault}) {
    if (fault != null) {
      this._fault = fault;
    }
  }

  Fault? get fault => _fault;
  set fault(Fault? fault) => _fault = fault;

  ApiError.fromJson(Map<String, dynamic> json) {
    _fault = json['fault'] != null ? Fault.fromJson(json['fault']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this._fault != null) {
      data['fault'] = this._fault!.toJson();
    }
    return data;
  }
}
