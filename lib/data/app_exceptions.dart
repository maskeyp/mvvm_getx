class AppException implements Exception {
  final _message;
  final _prefix;

  AppException([this._message, this._prefix]);

  String toString() {
    return '$_prefix$_message';
  }
}

class InternetException extends AppException {
  InternetException([String? message]) : super(message, 'No internet');
}

class RequestTimeout extends AppException {
  RequestTimeout([String? message]) : super(message, 'Request Time out');
}

class ServerException extends AppException {
  ServerException([String? message]) : super(message, 'Server Error');
}

class InvalidUrlException extends AppException {
  InvalidUrlException([String? message]) : super(message, 'Invalid Url');
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, 'Error while Communication');
}
