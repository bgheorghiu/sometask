// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'display_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DisplayModel> _$displayModelSerializer = new _$DisplayModelSerializer();

class _$DisplayModelSerializer implements StructuredSerializer<DisplayModel> {
  @override
  final Iterable<Type> types = const [DisplayModel, _$DisplayModel];
  @override
  final String wireName = 'DisplayModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, DisplayModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'display',
      serializers.serialize(object.display, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  DisplayModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DisplayModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'display':
          result.display = serializers.deserialize(value, specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DisplayModel extends DisplayModel {
  @override
  final String display;

  factory _$DisplayModel([void Function(DisplayModelBuilder)? updates]) =>
      (new DisplayModelBuilder()..update(updates))._build();

  _$DisplayModel._({required this.display}) : super._() {
    BuiltValueNullFieldError.checkNotNull(display, r'DisplayModel', 'display');
  }

  @override
  DisplayModel rebuild(void Function(DisplayModelBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  DisplayModelBuilder toBuilder() => new DisplayModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisplayModel && display == other.display;
  }

  @override
  int get hashCode {
    return $jf($jc(0, display.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DisplayModel')..add('display', display)).toString();
  }
}

class DisplayModelBuilder implements Builder<DisplayModel, DisplayModelBuilder> {
  _$DisplayModel? _$v;

  String? _display;
  String? get display => _$this._display;
  set display(String? display) => _$this._display = display;

  DisplayModelBuilder();

  DisplayModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _display = $v.display;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisplayModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisplayModel;
  }

  @override
  void update(void Function(DisplayModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisplayModel build() => _build();

  _$DisplayModel _build() {
    final _$result = _$v ??
        new _$DisplayModel._(display: BuiltValueNullFieldError.checkNotNull(display, r'DisplayModel', 'display'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
