import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_error.freezed.dart';

@freezed
sealed class AppError with _$AppError {
  const AppError._();

  factory AppError.unknown({
    String? message,
  }) = UnknownAppError;

  factory AppError.fromError(dynamic error) {
    if (error is AppError) return error;
    return AppError.unknown();
  }

  String get displayErrorMessage {
    return message ?? 'Something went wrong';
  }
}
