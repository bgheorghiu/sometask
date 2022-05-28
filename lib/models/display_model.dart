import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:interview/models/serializers.dart';

part 'display_model.g.dart';

abstract class DisplayModel implements Built<DisplayModel, DisplayModelBuilder> {
  factory DisplayModel([void Function(DisplayModelBuilder) updates]) = _$DisplayModel;

  factory DisplayModel.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json)!;
  }

  DisplayModel._();

  String get display;

  static Serializer<DisplayModel> get serializer => _$displayModelSerializer;
}
