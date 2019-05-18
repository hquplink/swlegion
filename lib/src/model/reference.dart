import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:swlegion/swlegion.dart';

/// Represents an object [T] that has a unique [id] field and can be [toRef]'d.
abstract class Indexable<T extends Indexable<T>> {
  /// Unique unchangeable identifier that is used to implement [toRef].
  String get id;

  /// Weak reference to this entity.
  Reference<T> toRef() => Reference(id);
}

/// Represents a weak reference to the full entity [T] by [id].
class Reference<T extends Indexable<T>> implements Indexable<T> {
  /// Custom [Serializer] implementation for [Reference].
  static const Serializer<Reference> serializer = const _ReferenceSerializer();

  @override
  final String id;

  const Reference(this.id) : assert(id != null);

  @override
  bool operator ==(Object o) => o is Reference<T> && o.id == id;

  @override
  int get hashCode => id.hashCode;

  @override
  Reference<T> toRef() => this;

  @override
  String toString() => 'Reference<$T>: $id';
}

class IndexableSerializer<T extends Indexable<T>>
    implements PrimitiveSerializer<T> {
  final BuiltMap<String, T> _index;

  const IndexableSerializer(
    this._index, {
    @required this.types,
    @required this.wireName,
  });

  @override
  Object serialize(
    Serializers serializers,
    T object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return object.id;
  }

  @override
  T deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _index[serialized as String];
  }

  @override
  final List<Type> types;

  @override
  final String wireName;
}

class _ReferenceSerializer implements PrimitiveSerializer<Reference> {
  const _ReferenceSerializer();

  @override
  final types = const [Reference];

  @override
  final wireName = 'Reference';

  @override
  Object serialize(
    Serializers serializers,
    Reference object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (specifiedType == FullType.unspecified) {
      throw ArgumentError('Missing "specifiedType".');
    }
    return ['id', object.id];
  }

  @override
  Reference deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (specifiedType == FullType.unspecified) {
      throw ArgumentError('Missing "specifiedType".');
    }
    final idField = (serialized as Iterable).last as String;
    if (specifiedType == const FullType(Reference, [FullType(CommandCard)])) {
      return Reference<CommandCard>(idField);
    }
    if (specifiedType == const FullType(Reference, [FullType(Unit)])) {
      return Reference<Unit>(idField);
    }
    if (specifiedType == const FullType(Reference, [FullType(Upgrade)])) {
      return Reference<Upgrade>(idField);
    }
    throw ArgumentError('Invalid "specifiedType": $specifiedType.');
  }
}
