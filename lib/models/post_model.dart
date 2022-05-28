import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:interview/models/author_model.dart';
import 'package:interview/models/media_model.dart';
import 'package:interview/models/serializers.dart';
import 'package:interview/models/spot_model.dart';
import 'package:interview/models/tag_model.dart';

part 'post_model.g.dart';

abstract class Post implements Built<Post, PostBuilder> {
  factory Post([void Function(PostBuilder) updates]) = _$Post;

  factory Post.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, {
      ...json,
      'description': (json['caption']['text']),
    })!;
  }

  Post._();

  String get id;

  String? get title;

  String get description;

  BuiltList<MediaModel> get media;

  Author get author;

  BuiltList<TagModel> get tags;

  SpotModel get spot;

  @BuiltValueField(wireName: 'created_at')
  String get createdAt;

  static Serializer<Post> get serializer => _$postSerializer;
}
