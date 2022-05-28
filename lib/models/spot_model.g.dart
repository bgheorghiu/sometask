// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SpotModel> _$spotModelSerializer = new _$SpotModelSerializer();

class _$SpotModelSerializer implements StructuredSerializer<SpotModel> {
  @override
  final Iterable<Type> types = const [SpotModel, _$SpotModel];
  @override
  final String wireName = 'SpotModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, SpotModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'location',
      serializers.serialize(object.location, specifiedType: const FullType(DisplayModel)),
      'logo',
      serializers.serialize(object.logo, specifiedType: const FullType(LogoModel)),
      'types',
      serializers.serialize(object.types, specifiedType: const FullType(BuiltList, const [const FullType(TypeModel)])),
    ];

    return result;
  }

  @override
  SpotModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SpotModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value, specifiedType: const FullType(String))! as String;
          break;
        case 'location':
          result.location
              .replace(serializers.deserialize(value, specifiedType: const FullType(DisplayModel))! as DisplayModel);
          break;
        case 'logo':
          result.logo.replace(serializers.deserialize(value, specifiedType: const FullType(LogoModel))! as LogoModel);
          break;
        case 'types':
          result.types.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [const FullType(TypeModel)]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$SpotModel extends SpotModel {
  @override
  final String name;
  @override
  final DisplayModel location;
  @override
  final LogoModel logo;
  @override
  final BuiltList<TypeModel> types;

  factory _$SpotModel([void Function(SpotModelBuilder)? updates]) => (new SpotModelBuilder()..update(updates))._build();

  _$SpotModel._({required this.name, required this.location, required this.logo, required this.types}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'SpotModel', 'name');
    BuiltValueNullFieldError.checkNotNull(location, r'SpotModel', 'location');
    BuiltValueNullFieldError.checkNotNull(logo, r'SpotModel', 'logo');
    BuiltValueNullFieldError.checkNotNull(types, r'SpotModel', 'types');
  }

  @override
  SpotModel rebuild(void Function(SpotModelBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  SpotModelBuilder toBuilder() => new SpotModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotModel &&
        name == other.name &&
        location == other.location &&
        logo == other.logo &&
        types == other.types;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, name.hashCode), location.hashCode), logo.hashCode), types.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SpotModel')
          ..add('name', name)
          ..add('location', location)
          ..add('logo', logo)
          ..add('types', types))
        .toString();
  }
}

class SpotModelBuilder implements Builder<SpotModel, SpotModelBuilder> {
  _$SpotModel? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DisplayModelBuilder? _location;
  DisplayModelBuilder get location => _$this._location ??= new DisplayModelBuilder();
  set location(DisplayModelBuilder? location) => _$this._location = location;

  LogoModelBuilder? _logo;
  LogoModelBuilder get logo => _$this._logo ??= new LogoModelBuilder();
  set logo(LogoModelBuilder? logo) => _$this._logo = logo;

  ListBuilder<TypeModel>? _types;
  ListBuilder<TypeModel> get types => _$this._types ??= new ListBuilder<TypeModel>();
  set types(ListBuilder<TypeModel>? types) => _$this._types = types;

  SpotModelBuilder();

  SpotModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _location = $v.location.toBuilder();
      _logo = $v.logo.toBuilder();
      _types = $v.types.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotModel;
  }

  @override
  void update(void Function(SpotModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotModel build() => _build();

  _$SpotModel _build() {
    _$SpotModel _$result;
    try {
      _$result = _$v ??
          new _$SpotModel._(
              name: BuiltValueNullFieldError.checkNotNull(name, r'SpotModel', 'name'),
              location: location.build(),
              logo: logo.build(),
              types: types.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        location.build();
        _$failedField = 'logo';
        logo.build();
        _$failedField = 'types';
        types.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(r'SpotModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
