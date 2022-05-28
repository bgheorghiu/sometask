library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:interview/models/author_model.dart';
import 'package:interview/models/display_model.dart';
import 'package:interview/models/logo_model.dart';
import 'package:interview/models/media_model.dart';
import 'package:interview/models/post_model.dart';
import 'package:interview/models/spot_model.dart';
import 'package:interview/models/tag_model.dart';
import 'package:interview/models/type_model.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  Post,
  MediaModel,
  TagModel,
  Author,
  SpotModel,
  LogoModel,
  TypeModel,
  DisplayModel,
])
Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
