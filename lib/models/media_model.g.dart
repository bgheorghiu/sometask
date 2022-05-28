// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MediaModel> _$mediaModelSerializer = new _$MediaModelSerializer();

class _$MediaModelSerializer implements StructuredSerializer<MediaModel> {
  @override
  final Iterable<Type> types = const [MediaModel, _$MediaModel];
  @override
  final String wireName = 'MediaModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, MediaModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MediaModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MediaModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value, specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value, specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MediaModel extends MediaModel {
  @override
  final String url;
  @override
  final String type;

  factory _$MediaModel([void Function(MediaModelBuilder)? updates]) =>
      (new MediaModelBuilder()..update(updates))._build();

  _$MediaModel._({required this.url, required this.type}) : super._() {
    BuiltValueNullFieldError.checkNotNull(url, r'MediaModel', 'url');
    BuiltValueNullFieldError.checkNotNull(type, r'MediaModel', 'type');
  }

  @override
  MediaModel rebuild(void Function(MediaModelBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  MediaModelBuilder toBuilder() => new MediaModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaModel && url == other.url && type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, url.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaModel')
          ..add('url', url)
          ..add('type', type))
        .toString();
  }
}

class MediaModelBuilder implements Builder<MediaModel, MediaModelBuilder> {
  _$MediaModel? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  MediaModelBuilder();

  MediaModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MediaModel;
  }

  @override
  void update(void Function(MediaModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaModel build() => _build();

  _$MediaModel _build() {
    final _$result = _$v ??
        new _$MediaModel._(
            url: BuiltValueNullFieldError.checkNotNull(url, r'MediaModel', 'url'),
            type: BuiltValueNullFieldError.checkNotNull(type, r'MediaModel', 'type'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
