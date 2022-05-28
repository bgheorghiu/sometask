// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TagModel> _$tagModelSerializer = new _$TagModelSerializer();

class _$TagModelSerializer implements StructuredSerializer<TagModel> {
  @override
  final Iterable<Type> types = const [TagModel, _$TagModel];
  @override
  final String wireName = 'TagModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, TagModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TagModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TagModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value, specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value, specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TagModel extends TagModel {
  @override
  final int id;
  @override
  final String name;

  factory _$TagModel([void Function(TagModelBuilder)? updates]) => (new TagModelBuilder()..update(updates))._build();

  _$TagModel._({required this.id, required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'TagModel', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'TagModel', 'name');
  }

  @override
  TagModel rebuild(void Function(TagModelBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  TagModelBuilder toBuilder() => new TagModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagModel && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TagModel')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class TagModelBuilder implements Builder<TagModel, TagModelBuilder> {
  _$TagModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  TagModelBuilder();

  TagModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TagModel;
  }

  @override
  void update(void Function(TagModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagModel build() => _build();

  _$TagModel _build() {
    final _$result = _$v ??
        new _$TagModel._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'TagModel', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'TagModel', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
