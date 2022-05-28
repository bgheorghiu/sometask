import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:interview/models/serializers.dart';

part 'logo_model.g.dart';

abstract class LogoModel implements Built<LogoModel, LogoModelBuilder> {
  factory LogoModel([void Function(LogoModelBuilder) updates]) = _$LogoModel;

  factory LogoModel.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json)!;
  }

  LogoModel._();

  String get url;

  static Serializer<LogoModel> get serializer => _$logoModelSerializer;
}
