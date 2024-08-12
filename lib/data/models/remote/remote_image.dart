import 'package:json_annotation/json_annotation.dart';
import 'package:recipe_book/data/models/domain_adapter.dart';

part 'remote_image.g.dart';

@JsonSerializable()
class RemoteImage implements DomainAdapter<String> {
  final String url;

  const RemoteImage({
    required this.url,
  });

  factory RemoteImage.fromJson(Map<String, dynamic> json) => _$RemoteImageFromJson(json);

  @override
  String toDomainModel() {
    return url;
  }
}
