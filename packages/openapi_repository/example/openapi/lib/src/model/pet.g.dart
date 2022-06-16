// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PetStatusEnum _$petStatusEnum_available =
    const PetStatusEnum._('available');
const PetStatusEnum _$petStatusEnum_pending = const PetStatusEnum._('pending');
const PetStatusEnum _$petStatusEnum_sold = const PetStatusEnum._('sold');

PetStatusEnum _$petStatusEnumValueOf(String name) {
  switch (name) {
    case 'available':
      return _$petStatusEnum_available;
    case 'pending':
      return _$petStatusEnum_pending;
    case 'sold':
      return _$petStatusEnum_sold;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PetStatusEnum> _$petStatusEnumValues =
    new BuiltSet<PetStatusEnum>(const <PetStatusEnum>[
  _$petStatusEnum_available,
  _$petStatusEnum_pending,
  _$petStatusEnum_sold,
]);

Serializer<PetStatusEnum> _$petStatusEnumSerializer =
    new _$PetStatusEnumSerializer();

class _$PetStatusEnumSerializer implements PrimitiveSerializer<PetStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'available': 'available',
    'pending': 'pending',
    'sold': 'sold',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'available': 'available',
    'pending': 'pending',
    'sold': 'sold',
  };

  @override
  final Iterable<Type> types = const <Type>[PetStatusEnum];
  @override
  final String wireName = 'PetStatusEnum';

  @override
  Object serialize(Serializers serializers, PetStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PetStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PetStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Pet extends Pet {
  @override
  final int? id;
  @override
  final Category? category;
  @override
  final String name;
  @override
  final BuiltList<String> photoUrls;
  @override
  final BuiltList<Tag>? tags;
  @override
  final PetStatusEnum? status;

  factory _$Pet([void Function(PetBuilder)? updates]) =>
      (new PetBuilder()..update(updates)).build();

  _$Pet._(
      {this.id,
      this.category,
      required this.name,
      required this.photoUrls,
      this.tags,
      this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'Pet', 'name');
    BuiltValueNullFieldError.checkNotNull(photoUrls, 'Pet', 'photoUrls');
  }

  @override
  Pet rebuild(void Function(PetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PetBuilder toBuilder() => new PetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Pet &&
        id == other.id &&
        category == other.category &&
        name == other.name &&
        photoUrls == other.photoUrls &&
        tags == other.tags &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), category.hashCode), name.hashCode),
                photoUrls.hashCode),
            tags.hashCode),
        status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Pet')
          ..add('id', id)
          ..add('category', category)
          ..add('name', name)
          ..add('photoUrls', photoUrls)
          ..add('tags', tags)
          ..add('status', status))
        .toString();
  }
}

class PetBuilder implements Builder<Pet, PetBuilder> {
  _$Pet? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  CategoryBuilder? _category;
  CategoryBuilder get category => _$this._category ??= new CategoryBuilder();
  set category(CategoryBuilder? category) => _$this._category = category;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _photoUrls;
  ListBuilder<String> get photoUrls =>
      _$this._photoUrls ??= new ListBuilder<String>();
  set photoUrls(ListBuilder<String>? photoUrls) =>
      _$this._photoUrls = photoUrls;

  ListBuilder<Tag>? _tags;
  ListBuilder<Tag> get tags => _$this._tags ??= new ListBuilder<Tag>();
  set tags(ListBuilder<Tag>? tags) => _$this._tags = tags;

  PetStatusEnum? _status;
  PetStatusEnum? get status => _$this._status;
  set status(PetStatusEnum? status) => _$this._status = status;

  PetBuilder() {
    Pet._defaults(this);
  }

  PetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _category = $v.category?.toBuilder();
      _name = $v.name;
      _photoUrls = $v.photoUrls.toBuilder();
      _tags = $v.tags?.toBuilder();
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Pet other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Pet;
  }

  @override
  void update(void Function(PetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Pet build() {
    _$Pet _$result;
    try {
      _$result = _$v ??
          new _$Pet._(
              id: id,
              category: _category?.build(),
              name: BuiltValueNullFieldError.checkNotNull(name, 'Pet', 'name'),
              photoUrls: photoUrls.build(),
              tags: _tags?.build(),
              status: status);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'category';
        _category?.build();

        _$failedField = 'photoUrls';
        photoUrls.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Pet', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
