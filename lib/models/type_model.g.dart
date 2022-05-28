// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TypeModel> _$typeModelSerializer = new _$TypeModelSerializer();

class _$TypeModelSerializer implements StructuredSerializer<TypeModel> {
  @override
  final Iterable<Type> types = const [TypeModel, _$TypeModel];
  @override
  final String wireName = 'TypeModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, TypeModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TypeModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TypeModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value, specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TypeModel extends TypeModel {
  @override
  final String name;

  factory _$TypeModel([void Function(TypeModelBuilder)? updates]) => (new TypeModelBuilder()..update(updates))._build();

  _$TypeModel._({required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'TypeModel', 'name');
  }

  @override
  TypeModel rebuild(void Function(TypeModelBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  TypeModelBuilder toBuilder() => new TypeModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TypeModel && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(0, name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TypeModel')..add('name', name)).toString();
  }
}

class TypeModelBuilder implements Builder<TypeModel, TypeModelBuilder> {
  _$TypeModel? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  TypeModelBuilder();

  TypeModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TypeModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TypeModel;
  }

  @override
  void update(void Function(TypeModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TypeModel build() => _build();

  _$TypeModel _build() {
    final _$result = _$v ?? new _$TypeModel._(name: BuiltValueNullFieldError.checkNotNull(name, r'TypeModel', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
