// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FindPetByStatusListFilter _$$_FindPetByStatusListFilterFromJson(
        Map<String, dynamic> json) =>
    _$_FindPetByStatusListFilter(
      status: const BuiltListStringConverter()
          .fromJson(json['status'] as List<String>),
    );

Map<String, dynamic> _$$_FindPetByStatusListFilterToJson(
        _$_FindPetByStatusListFilter instance) =>
    <String, dynamic>{
      'status': const BuiltListStringConverter().toJson(instance.status),
    };

_$_PetRetrieveFilter _$$_PetRetrieveFilterFromJson(Map<String, dynamic> json) =>
    _$_PetRetrieveFilter(
      petId: json['petId'] as int,
    );

Map<String, dynamic> _$$_PetRetrieveFilterToJson(
        _$_PetRetrieveFilter instance) =>
    <String, dynamic>{
      'petId': instance.petId,
    };

_$_OrderRetrieveFilter _$$_OrderRetrieveFilterFromJson(
        Map<String, dynamic> json) =>
    _$_OrderRetrieveFilter(
      orderId: json['orderId'] as int,
    );

Map<String, dynamic> _$$_OrderRetrieveFilterToJson(
        _$_OrderRetrieveFilter instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
    };

_$_UserByUsernameRetrieveFilter _$$_UserByUsernameRetrieveFilterFromJson(
        Map<String, dynamic> json) =>
    _$_UserByUsernameRetrieveFilter(
      username: json['username'] as String,
    );

Map<String, dynamic> _$$_UserByUsernameRetrieveFilterToJson(
        _$_UserByUsernameRetrieveFilter instance) =>
    <String, dynamic>{
      'username': instance.username,
    };
