import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:interview/models/display_model.dart';
import 'package:interview/models/logo_model.dart';
import 'package:interview/models/serializers.dart';
import 'package:interview/models/type_model.dart';

part 'spot_model.g.dart';

abstract class SpotModel implements Built<SpotModel, SpotModelBuilder> {
  factory SpotModel([void Function(SpotModelBuilder) updates]) = _$SpotModel;

  factory SpotModel.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json)!;
  }

  SpotModel._();

  String get name;

  DisplayModel get location;

  LogoModel get logo;

  BuiltList<TypeModel> get types;

  static Serializer<SpotModel> get serializer => _$spotModelSerializer;
}
