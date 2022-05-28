import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:interview/models/serializers.dart';

part 'tag_model.g.dart';

abstract class TagModel implements Built<TagModel, TagModelBuilder> {
  factory TagModel([void Function(TagModelBuilder) updates]) = _$TagModel;

  factory TagModel.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json)!;
  }

  TagModel._();

  int get id;

  String get name;

  static Serializer<TagModel> get serializer => _$tagModelSerializer;
}
