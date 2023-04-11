//<T> generic Data
import 'package:mvvm_getx/data/response/status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse(this.status, this.data, this.message);

  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.completed(this.data) : status = Status.LOADING;
  ApiResponse.error(this.message) : status = Status.LOADING;

  @override
  String toString() {
    return "Status : $status \n Message: $message \n Data: $data";
  }
}
