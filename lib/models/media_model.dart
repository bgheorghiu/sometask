import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:interview/models/serializers.dart';

part 'media_model.g.dart';

abstract class MediaModel implements Built<MediaModel, MediaModelBuilder> {
  factory MediaModel([void Function(MediaModelBuilder) updates]) = _$MediaModel;

  factory MediaModel.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json)!;
  }

  MediaModel._();

  String get url;

  String get type;

  static Serializer<MediaModel> get serializer => _$mediaModelSerializer;
}
