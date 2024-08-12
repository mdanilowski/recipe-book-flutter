abstract interface class UseCase<T, P extends UseCaseParams> {
  Future<T> call(P params);
}

abstract interface class UseCaseParams {}