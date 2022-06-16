// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderStatusEnum _$orderStatusEnum_placed =
    const OrderStatusEnum._('placed');
const OrderStatusEnum _$orderStatusEnum_approved =
    const OrderStatusEnum._('approved');
const OrderStatusEnum _$orderStatusEnum_delivered =
    const OrderStatusEnum._('delivered');

OrderStatusEnum _$orderStatusEnumValueOf(String name) {
  switch (name) {
    case 'placed':
      return _$orderStatusEnum_placed;
    case 'approved':
      return _$orderStatusEnum_approved;
    case 'delivered':
      return _$orderStatusEnum_delivered;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<OrderStatusEnum> _$orderStatusEnumValues =
    new BuiltSet<OrderStatusEnum>(const <OrderStatusEnum>[
  _$orderStatusEnum_placed,
  _$orderStatusEnum_approved,
  _$orderStatusEnum_delivered,
]);

Serializer<OrderStatusEnum> _$orderStatusEnumSerializer =
    new _$OrderStatusEnumSerializer();

class _$OrderStatusEnumSerializer
    implements PrimitiveSerializer<OrderStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'placed': 'placed',
    'approved': 'approved',
    'delivered': 'delivered',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'placed': 'placed',
    'approved': 'approved',
    'delivered': 'delivered',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderStatusEnum];
  @override
  final String wireName = 'OrderStatusEnum';

  @override
  Object serialize(Serializers serializers, OrderStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Order extends Order {
  @override
  final int? id;
  @override
  final int? petId;
  @override
  final int? quantity;
  @override
  final DateTime? shipDate;
  @override
  final OrderStatusEnum? status;
  @override
  final bool? complete;

  factory _$Order([void Function(OrderBuilder)? updates]) =>
      (new OrderBuilder()..update(updates)).build();

  _$Order._(
      {this.id,
      this.petId,
      this.quantity,
      this.shipDate,
      this.status,
      this.complete})
      : super._();

  @override
  Order rebuild(void Function(OrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderBuilder toBuilder() => new OrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Order &&
        id == other.id &&
        petId == other.petId &&
        quantity == other.quantity &&
        shipDate == other.shipDate &&
        status == other.status &&
        complete == other.complete;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), petId.hashCode),
                    quantity.hashCode),
                shipDate.hashCode),
            status.hashCode),
        complete.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Order')
          ..add('id', id)
          ..add('petId', petId)
          ..add('quantity', quantity)
          ..add('shipDate', shipDate)
          ..add('status', status)
          ..add('complete', complete))
        .toString();
  }
}

class OrderBuilder implements Builder<Order, OrderBuilder> {
  _$Order? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _petId;
  int? get petId => _$this._petId;
  set petId(int? petId) => _$this._petId = petId;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  DateTime? _shipDate;
  DateTime? get shipDate => _$this._shipDate;
  set shipDate(DateTime? shipDate) => _$this._shipDate = shipDate;

  OrderStatusEnum? _status;
  OrderStatusEnum? get status => _$this._status;
  set status(OrderStatusEnum? status) => _$this._status = status;

  bool? _complete;
  bool? get complete => _$this._complete;
  set complete(bool? complete) => _$this._complete = complete;

  OrderBuilder() {
    Order._defaults(this);
  }

  OrderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _petId = $v.petId;
      _quantity = $v.quantity;
      _shipDate = $v.shipDate;
      _status = $v.status;
      _complete = $v.complete;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Order other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Order;
  }

  @override
  void update(void Function(OrderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Order build() {
    final _$result = _$v ??
        new _$Order._(
            id: id,
            petId: petId,
            quantity: quantity,
            shipDate: shipDate,
            status: status,
            complete: complete);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
