// ignore_for_file: public_member_api_docs, sort_constructors_first
sealed class ApiResults<T> {}

class ApiScuccess<T> extends ApiResults<T> {
  T? data;
  ApiScuccess({
    this.data,
  });
}

class APiError<T> extends ApiResults<T> {
  Exception error;
  APiError({
    required this.error,
  });
}
