import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:interview/models/serializers.dart';

part 'author_model.g.dart';

abstract class Author implements Built<Author, AuthorBuilder> {
  factory Author([void Function(AuthorBuilder) updates]) = _$Author;

  factory Author.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json)!;
  }

  Author._();

  String get id;

  String get username;

  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @BuiltValueField(wireName: 'full_name')
  String get fullName;

  static Serializer<Author> get serializer => _$authorSerializer;
}
