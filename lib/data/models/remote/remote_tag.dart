import 'package:json_annotation/json_annotation.dart';
import 'package:recipe_book/data/models/domain_adapter.dart';
import 'package:recipe_book/domain/models/tag.dart';

part 'remote_tag.g.dart';

@JsonSerializable()
class RemoteTag implements DomainAdapter<Tag?> {
  final String? id;
  final String? name;

  RemoteTag({
    this.id,
    this.name,
  });

  factory RemoteTag.fromJson(Map<String, dynamic> json) => _$RemoteTagFromJson(json);

  @override
  Tag? toDomainModel() {
    final String? name = this.name;
    if (name == null) return null;
    return Tag(
      name: name,
    );
  }
}
