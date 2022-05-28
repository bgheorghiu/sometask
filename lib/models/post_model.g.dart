// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Post> _$postSerializer = new _$PostSerializer();

class _$PostSerializer implements StructuredSerializer<Post> {
  @override
  final Iterable<Type> types = const [Post, _$Post];
  @override
  final String wireName = 'Post';

  @override
  Iterable<Object?> serialize(Serializers serializers, Post object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description, specifiedType: const FullType(String)),
      'media',
      serializers.serialize(object.media, specifiedType: const FullType(BuiltList, const [const FullType(MediaModel)])),
      'author',
      serializers.serialize(object.author, specifiedType: const FullType(Author)),
      'tags',
      serializers.serialize(object.tags, specifiedType: const FullType(BuiltList, const [const FullType(TagModel)])),
      'spot',
      serializers.serialize(object.spot, specifiedType: const FullType(SpotModel)),
      'created_at',
      serializers.serialize(object.createdAt, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Post deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value, specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value, specifiedType: const FullType(String))! as String;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [const FullType(MediaModel)]))! as BuiltList<Object?>);
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value, specifiedType: const FullType(Author))! as Author);
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [const FullType(TagModel)]))! as BuiltList<Object?>);
          break;
        case 'spot':
          result.spot.replace(serializers.deserialize(value, specifiedType: const FullType(SpotModel))! as SpotModel);
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value, specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Post extends Post {
  @override
  final String id;
  @override
  final String? title;
  @override
  final String description;
  @override
  final BuiltList<MediaModel> media;
  @override
  final Author author;
  @override
  final BuiltList<TagModel> tags;
  @override
  final SpotModel spot;
  @override
  final String createdAt;

  factory _$Post([void Function(PostBuilder)? updates]) => (new PostBuilder()..update(updates))._build();

  _$Post._(
      {required this.id,
      this.title,
      required this.description,
      required this.media,
      required this.author,
      required this.tags,
      required this.spot,
      required this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Post', 'id');
    BuiltValueNullFieldError.checkNotNull(description, r'Post', 'description');
    BuiltValueNullFieldError.checkNotNull(media, r'Post', 'media');
    BuiltValueNullFieldError.checkNotNull(author, r'Post', 'author');
    BuiltValueNullFieldError.checkNotNull(tags, r'Post', 'tags');
    BuiltValueNullFieldError.checkNotNull(spot, r'Post', 'spot');
    BuiltValueNullFieldError.checkNotNull(createdAt, r'Post', 'createdAt');
  }

  @override
  Post rebuild(void Function(PostBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  PostBuilder toBuilder() => new PostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Post &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        media == other.media &&
        author == other.author &&
        tags == other.tags &&
        spot == other.spot &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc($jc(0, id.hashCode), title.hashCode), description.hashCode), media.hashCode),
                    author.hashCode),
                tags.hashCode),
            spot.hashCode),
        createdAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Post')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('media', media)
          ..add('author', author)
          ..add('tags', tags)
          ..add('spot', spot)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class PostBuilder implements Builder<Post, PostBuilder> {
  _$Post? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<MediaModel>? _media;
  ListBuilder<MediaModel> get media => _$this._media ??= new ListBuilder<MediaModel>();
  set media(ListBuilder<MediaModel>? media) => _$this._media = media;

  AuthorBuilder? _author;
  AuthorBuilder get author => _$this._author ??= new AuthorBuilder();
  set author(AuthorBuilder? author) => _$this._author = author;

  ListBuilder<TagModel>? _tags;
  ListBuilder<TagModel> get tags => _$this._tags ??= new ListBuilder<TagModel>();
  set tags(ListBuilder<TagModel>? tags) => _$this._tags = tags;

  SpotModelBuilder? _spot;
  SpotModelBuilder get spot => _$this._spot ??= new SpotModelBuilder();
  set spot(SpotModelBuilder? spot) => _$this._spot = spot;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  PostBuilder();

  PostBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _media = $v.media.toBuilder();
      _author = $v.author.toBuilder();
      _tags = $v.tags.toBuilder();
      _spot = $v.spot.toBuilder();
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Post other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Post;
  }

  @override
  void update(void Function(PostBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Post build() => _build();

  _$Post _build() {
    _$Post _$result;
    try {
      _$result = _$v ??
          new _$Post._(
              id: BuiltValueNullFieldError.checkNotNull(id, r'Post', 'id'),
              title: title,
              description: BuiltValueNullFieldError.checkNotNull(description, r'Post', 'description'),
              media: media.build(),
              author: author.build(),
              tags: tags.build(),
              spot: spot.build(),
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, r'Post', 'createdAt'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        media.build();
        _$failedField = 'author';
        author.build();
        _$failedField = 'tags';
        tags.build();
        _$failedField = 'spot';
        spot.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(r'Post', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
