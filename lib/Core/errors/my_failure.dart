import 'package:dio/dio.dart';

class MyFailure {
  final String errorMassage;
  MyFailure({required this.errorMassage});
}

class ServerFailure extends MyFailure {
  ServerFailure({required super.errorMassage});

  factory ServerFailure.fromDioError(
    DioException dioError,
  ) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          errorMassage:
              'Connection Timeout with Api Server',
        );
      case DioExceptionType.sendTimeout:
        return ServerFailure(
          errorMassage:
              'Send Timeout with Api Server',
        );
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          errorMassage:
              'Receive Timeout with Api Server',
        );
      case DioExceptionType.badCertificate:
        return ServerFailure(
          errorMassage:
              "Connection failed: Invalid or untrusted SSL certificate.",
        );
      case DioExceptionType.badResponse:
        ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response,
        );
      case DioExceptionType.cancel:
        return ServerFailure(
          errorMassage:
              "The request was cancelled before completion.",
        );
      case DioExceptionType.connectionError:
        return ServerFailure(
          errorMassage:
              "Connection failed. Please check your internet connection and try again.",
        );
      case DioExceptionType.unknown:
        return ServerFailure(
          errorMassage:
              "An unexpected error occurred. Please try again later or contact support.",
        );
    }
    return ServerFailure(
      errorMassage: 'Opps Unexpected Error',
    );
  }

  // ? ServerFailure.fromResponse
  factory ServerFailure.fromResponse(
    int statusCode,
    dynamic response,
  ) {
    if (statusCode == 400) {
      return ServerFailure(
        errorMassage:
            "Bad Request. Please check your input.",
      );
    } else if (statusCode == 401) {
      return ServerFailure(
        errorMassage:
            "Unauthorized. Please check your token or credentials.",
      );
    } else if (statusCode == 403) {
      return ServerFailure(
        errorMassage:
            "Forbidden. You don’t have permission to access this resource.",
      );
    } else if (statusCode == 404) {
      return ServerFailure(
        errorMassage:
            "Not Found. The requested resource could not be found.",
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        errorMassage:
            "Internal Server Error. Please try again later.",
      );
    } else {
      return ServerFailure(
        errorMassage:
            "Unexpected error occurred (Status Code: $statusCode). Please try again later.",
      );
    }
  }
}
