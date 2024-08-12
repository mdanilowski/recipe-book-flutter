import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag.freezed.dart';

@freezed
class Tag with _$Tag {
  const factory Tag({
    required String name,
  }) = _Tag;
}
