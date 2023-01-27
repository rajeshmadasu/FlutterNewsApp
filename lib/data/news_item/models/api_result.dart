// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:http/http.dart';

import 'error/api_error.dart';

abstract class ApiResult<T> {
  static const String _jsonNodeData = "results";
  static const String _jsonNodeErrors = "fault";
  static ApiResult<T> fromResponse<T>(Response response) {
    final responseData = json.decode(response.body) as Map<String, dynamic>;
    if (responseData[_jsonNodeErrors] != null) {
      return ServerError.fromResponse(response);
    } else if (responseData[_jsonNodeData] != null) {
      return Success(json.decode(response.body));
    } else {
      return InternalError();
    }
  }
}

class Success<T> extends ApiResult<T> {
  final T data;

  Success(
    this.data,
  );
}

class Failed<T> extends ApiResult<T> {
  ApiError errors;

  Failed(this.errors);
}

class ServerError<T> extends Failed<T> {
  ServerError(ApiError errors) : super(errors);

  static ServerError<T> fromResponse<T>(Response response) {
    return ServerError(
        ApiError.fromJson(json.decode(response.body) as Map<String, dynamic>));
  }
}

class NetworkError<T> extends Failed<T> {
  NetworkError(ApiError errors) : super(errors);
}

class InternalError<T> extends Failed<T> {
  InternalError() : super(ApiError());
}
