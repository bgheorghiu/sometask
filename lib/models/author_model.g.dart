// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Author> _$authorSerializer = new _$AuthorSerializer();

class _$AuthorSerializer implements StructuredSerializer<Author> {
  @override
  final Iterable<Type> types = const [Author, _$Author];
  @override
  final String wireName = 'Author';

  @override
  Iterable<Object?> serialize(Serializers serializers, Author object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username, specifiedType: const FullType(String)),
      'photo_url',
      serializers.serialize(object.photoUrl, specifiedType: const FullType(String)),
      'full_name',
      serializers.serialize(object.fullName, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Author deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value, specifiedType: const FullType(String))! as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value, specifiedType: const FullType(String))! as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value, specifiedType: const FullType(String))! as String;
          break;
        case 'full_name':
          result.fullName = serializers.deserialize(value, specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Author extends Author {
  @override
  final String id;
  @override
  final String username;
  @override
  final String photoUrl;
  @override
  final String fullName;

  factory _$Author([void Function(AuthorBuilder)? updates]) => (new AuthorBuilder()..update(updates))._build();

  _$Author._({required this.id, required this.username, required this.photoUrl, required this.fullName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Author', 'id');
    BuiltValueNullFieldError.checkNotNull(username, r'Author', 'username');
    BuiltValueNullFieldError.checkNotNull(photoUrl, r'Author', 'photoUrl');
    BuiltValueNullFieldError.checkNotNull(fullName, r'Author', 'fullName');
  }

  @override
  Author rebuild(void Function(AuthorBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  AuthorBuilder toBuilder() => new AuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Author &&
        id == other.id &&
        username == other.username &&
        photoUrl == other.photoUrl &&
        fullName == other.fullName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, id.hashCode), username.hashCode), photoUrl.hashCode), fullName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Author')
          ..add('id', id)
          ..add('username', username)
          ..add('photoUrl', photoUrl)
          ..add('fullName', fullName))
        .toString();
  }
}

class AuthorBuilder implements Builder<Author, AuthorBuilder> {
  _$Author? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  AuthorBuilder();

  AuthorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _username = $v.username;
      _photoUrl = $v.photoUrl;
      _fullName = $v.fullName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Author;
  }

  @override
  void update(void Function(AuthorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Author build() => _build();

  _$Author _build() {
    final _$result = _$v ??
        new _$Author._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Author', 'id'),
            username: BuiltValueNullFieldError.checkNotNull(username, r'Author', 'username'),
            photoUrl: BuiltValueNullFieldError.checkNotNull(photoUrl, r'Author', 'photoUrl'),
            fullName: BuiltValueNullFieldError.checkNotNull(fullName, r'Author', 'fullName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
