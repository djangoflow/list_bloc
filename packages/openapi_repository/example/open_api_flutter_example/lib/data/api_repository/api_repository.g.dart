// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PetReadFilter _$$_PetReadFilterFromJson(Map<String, dynamic> json) =>
    _$_PetReadFilter(
      petId: json['petId'] as int,
    );

Map<String, dynamic> _$$_PetReadFilterToJson(_$_PetReadFilter instance) =>
    <String, dynamic>{
      'petId': instance.petId,
    };

_$_OrderReadFilter _$$_OrderReadFilterFromJson(Map<String, dynamic> json) =>
    _$_OrderReadFilter(
      orderId: json['orderId'] as int,
    );

Map<String, dynamic> _$$_OrderReadFilterToJson(_$_OrderReadFilter instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
    };

_$_UserByUsernameReadFilter _$$_UserByUsernameReadFilterFromJson(
        Map<String, dynamic> json) =>
    _$_UserByUsernameReadFilter(
      username: json['username'] as String,
    );

Map<String, dynamic> _$$_UserByUsernameReadFilterToJson(
        _$_UserByUsernameReadFilter instance) =>
    <String, dynamic>{
      'username': instance.username,
    };
