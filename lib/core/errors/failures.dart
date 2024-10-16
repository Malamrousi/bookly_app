
import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;
  Failures({
    required this.errorMessage,
  });
}

class ServerFailure extends Failures {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            errorMessage: 'connection Timeout Width Api server');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send Timeout Width Api server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Receive Timeout Width Api server');
      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: 'bad Certificate Width Api server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(
            errorMessage: 'Request to Api server width cancel');
      case DioExceptionType.connectionError:
        return ServerFailure(
            errorMessage: 'connection Error width  Api server');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure(errorMessage: 'No internetException ');
        }
        return ServerFailure(
            errorMessage: 'Unexpected Error, please try later!');

      default:
        return ServerFailure(errorMessage: 'Oops , please try again later');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic dioException) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMessage: dioException["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure(
          errorMessage: 'Your,Request Not found , please try later');
    } else if (statusCode == 500) {
      return ServerFailure(
          errorMessage: 'Internal ,Server Error , please try again later');
    } else {
      return ServerFailure(errorMessage: 'Oops , please try again later');
    }
  }
}
