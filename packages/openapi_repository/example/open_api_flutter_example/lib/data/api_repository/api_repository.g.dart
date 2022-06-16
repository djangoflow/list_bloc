// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FindPetByStatusListFilter _$$_FindPetByStatusListFilterFromJson(
        Map<String, dynamic> json) =>
    _$_FindPetByStatusListFilter(
      status: json['status'],
    );

Map<String, dynamic> _$$_FindPetByStatusListFilterToJson(
        _$_FindPetByStatusListFilter instance) =>
    <String, dynamic>{
      'status': instance.status,
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
