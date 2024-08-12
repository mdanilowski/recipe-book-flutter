extension IterableExtensions on Iterable<Object?> {
  List<T> filterNotNull<T>() {
    return where((object) => object != null).toList().cast<T>();
  }
}
