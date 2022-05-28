import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:interview/models/serializers.dart';

part 'type_model.g.dart';

abstract class TypeModel implements Built<TypeModel, TypeModelBuilder> {
  factory TypeModel([void Function(TypeModelBuilder) updates]) = _$TypeModel;

  factory TypeModel.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json)!;
  }

  TypeModel._();

  String get name;

  static Serializer<TypeModel> get serializer => _$typeModelSerializer;
}
