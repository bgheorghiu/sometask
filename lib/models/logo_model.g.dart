// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logo_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LogoModel> _$logoModelSerializer = new _$LogoModelSerializer();

class _$LogoModelSerializer implements StructuredSerializer<LogoModel> {
  @override
  final Iterable<Type> types = const [LogoModel, _$LogoModel];
  @override
  final String wireName = 'LogoModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, LogoModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LogoModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LogoModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value, specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LogoModel extends LogoModel {
  @override
  final String url;

  factory _$LogoModel([void Function(LogoModelBuilder)? updates]) => (new LogoModelBuilder()..update(updates))._build();

  _$LogoModel._({required this.url}) : super._() {
    BuiltValueNullFieldError.checkNotNull(url, r'LogoModel', 'url');
  }

  @override
  LogoModel rebuild(void Function(LogoModelBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  LogoModelBuilder toBuilder() => new LogoModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogoModel && url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(0, url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LogoModel')..add('url', url)).toString();
  }
}

class LogoModelBuilder implements Builder<LogoModel, LogoModelBuilder> {
  _$LogoModel? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  LogoModelBuilder();

  LogoModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogoModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LogoModel;
  }

  @override
  void update(void Function(LogoModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LogoModel build() => _build();

  _$LogoModel _build() {
    final _$result = _$v ?? new _$LogoModel._(url: BuiltValueNullFieldError.checkNotNull(url, r'LogoModel', 'url'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
