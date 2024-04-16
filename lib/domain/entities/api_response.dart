abstract class ApiResponse<T> {
  T? data;
  bool success;
  String? message;
  ApiResponse(this.data, this.success, this.message);
}

class ApiResponseSucces<T> extends ApiResponse<T> {
  ApiResponseSucces(T data) : super(data, true, null);
}

class ApiResponseError<T> extends ApiResponse<T> {
  ApiResponseError(String? message) : super(null, false, message);
}
