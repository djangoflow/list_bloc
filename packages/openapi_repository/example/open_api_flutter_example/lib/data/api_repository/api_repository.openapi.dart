// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_repository.dart';

// **************************************************************************
// OpenapiRepositoryGenerator
// **************************************************************************

class ApiRepository {
  static ApiRepository get instance => _instance;
  static final ApiRepository _instance = ApiRepository._internal();

  ApiRepository._internal() {
    _openapi.dio.options
      ..baseUrl = 'https://petstore.swagger.io/v2'
      ..connectTimeout = 3000
      ..receiveTimeout = 5000
      ..sendTimeout = 3000;
    _openapi.dio.interceptors.add(Interceptor());
  }

  static const String liveBasePath = 'https://petstore.swagger.io/v2';

  static final Openapi _openapi = Openapi(
    basePathOverride: kReleaseMode ? liveBasePath : null,
    interceptors: [],
  );

  Openapi get api => _openapi;
  PetApi get pet => api.getPetApi();
  StoreApi get store => api.getStoreApi();
  UserApi get user => api.getUserApi();
}

//Typdef for FindPetByStatusListState

typedef FindPetByStatusListState = Data<List<Pet>, FindPetByStatusListFilter>;

class BuiltListStringConverter
    implements JsonConverter<BuiltList<String>, List<String>> {
  const BuiltListStringConverter();

  @override
  BuiltList<String> fromJson(List<String> json) {
    return BuiltList<String>(json);
  }

  @override
  List<String> toJson(BuiltList<String> object) {
    return object.toList();
  }
}

//Filter for FindPetByStatusListFilter

@freezed
class FindPetByStatusListFilter with _$FindPetByStatusListFilter {
  const FindPetByStatusListFilter._();
  @BuiltListStringConverter()
  const factory FindPetByStatusListFilter({
    required BuiltList<String> status,
  }) = _FindPetByStatusListFilter;

  factory FindPetByStatusListFilter.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$FindPetByStatusListFilterFromJson(map);
}

// Repository for FindPetByStatusRepository

abstract class FindPetByStatusRepository {
  static Future<List<Pet>> list([
    FindPetByStatusListFilter? filter,
  ]) async {
    if (filter == null) {
      throw Exception('Invalid filter');
    }
    final r = await ApiRepository.instance.pet.findPetByStatusList(
      status: filter.status,
    );

    return r.data?.asList() ?? [];
  }
}

// ListCubit for FindPetByStatus

class FindPetByStatusListBloc extends ListCubit<Pet, FindPetByStatusListFilter>
    with FindPetByStatusRepository {
  FindPetByStatusListBloc(
    Future<List<Pet>> Function([
      FindPetByStatusListFilter? filter,
    ])
        loader,
  ) : super(FindPetByStatusRepository.list);
}

//Typdef for PetReadState

typedef PetReadState = Data<Pet, PetReadFilter>;

//Filter for PetReadFilter

@freezed
class PetReadFilter with _$PetReadFilter {
  const PetReadFilter._();

  const factory PetReadFilter({
    required int petId,
  }) = _PetReadFilter;

  factory PetReadFilter.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$PetReadFilterFromJson(map);
}

// Repository for PetRepository

abstract class PetRepository {
  static Future<Pet> read([
    PetReadFilter? filter,
  ]) async {
    if (filter == null) {
      throw Exception('Invalid filter');
    }
    final r = await ApiRepository.instance.pet.petRead(
      petId: filter.petId,
    );
    if (r.data == null) {
      throw Exception('Failed to load data!');
    } else {
      return r.data!;
    }
  }

  Future<void> create({
    required Pet body,
  }) async {
    final r = (await ApiRepository.instance.pet.petCreate(
      body: body,
    ));

    return r.data;
  }

  Future<void> updateObject({
    required Pet body,
  }) async {
    final r = (await ApiRepository.instance.pet.petUpdate(
      body: body,
    ));

    return r.data;
  }

  Future<void> delete({
    required int petId,
    String? apiKey,
  }) async {
    final r = (await ApiRepository.instance.pet.petDelete(
      petId: petId,
      apiKey: apiKey,
    ));

    return r.data;
  }
}

// DataCubit for Pet

class PetDataBloc extends DataCubit<Pet, PetReadFilter> with PetRepository {
  PetDataBloc(
    Future<Pet> Function([
      PetReadFilter? filter,
    ])
        loader,
  ) : super(PetRepository.read);

  @override
  Future<void> create({
    required Pet body,
  }) async {
    final r = await super.create(
      body: body,
    );

    return r;
  }

  @override
  Future<void> updateObject({
    required Pet body,
  }) async {
    final r = await super.updateObject(
      body: body,
    );
    await super.load(state.filter);

    return r;
  }

  @override
  Future<void> delete({
    required int petId,
    String? apiKey,
  }) async {
    final r = await super.delete(
      petId: petId,
      apiKey: apiKey,
    );

    return r;
  }
}

//Typdef for OrderReadState

typedef OrderReadState = Data<Order, OrderReadFilter>;

//Filter for OrderReadFilter

@freezed
class OrderReadFilter with _$OrderReadFilter {
  const OrderReadFilter._();

  const factory OrderReadFilter({
    required int orderId,
  }) = _OrderReadFilter;

  factory OrderReadFilter.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$OrderReadFilterFromJson(map);
}

// Repository for OrderRepository

abstract class OrderRepository {
  static Future<Order> read([
    OrderReadFilter? filter,
  ]) async {
    if (filter == null) {
      throw Exception('Invalid filter');
    }
    final r = await ApiRepository.instance.store.orderRead(
      orderId: filter.orderId,
    );
    if (r.data == null) {
      throw Exception('Failed to load data!');
    } else {
      return r.data!;
    }
  }

  Future<Order?> create({
    required Order body,
  }) async {
    final r = (await ApiRepository.instance.store.orderCreate(
      body: body,
    ));

    return r.data;
  }

  Future<void> delete({
    required int orderId,
  }) async {
    final r = (await ApiRepository.instance.store.orderDelete(
      orderId: orderId,
    ));

    return r.data;
  }
}

// DataCubit for Order

class OrderDataBloc extends DataCubit<Order, OrderReadFilter>
    with OrderRepository {
  OrderDataBloc(
    Future<Order> Function([
      OrderReadFilter? filter,
    ])
        loader,
  ) : super(OrderRepository.read);

  @override
  Future<Order?> create({
    required Order body,
  }) async {
    final r = await super.create(
      body: body,
    );

    return r;
  }

  @override
  Future<void> delete({
    required int orderId,
  }) async {
    final r = await super.delete(
      orderId: orderId,
    );

    return r;
  }
}

//Typdef for UserByUsernameReadState

typedef UserByUsernameReadState = Data<User, UserByUsernameReadFilter>;

//Filter for UserByUsernameReadFilter

@freezed
class UserByUsernameReadFilter with _$UserByUsernameReadFilter {
  const UserByUsernameReadFilter._();

  const factory UserByUsernameReadFilter({
    required String username,
  }) = _UserByUsernameReadFilter;

  factory UserByUsernameReadFilter.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$UserByUsernameReadFilterFromJson(map);
}

// Repository for UserByUsernameRepository

abstract class UserByUsernameRepository {
  static Future<User> read([
    UserByUsernameReadFilter? filter,
  ]) async {
    if (filter == null) {
      throw Exception('Invalid filter');
    }
    final r = await ApiRepository.instance.user.userByUsernameRead(
      username: filter.username,
    );
    if (r.data == null) {
      throw Exception('Failed to load data!');
    } else {
      return r.data!;
    }
  }
}

// DataCubit for UserByUsername

class UserByUsernameDataBloc extends DataCubit<User, UserByUsernameReadFilter>
    with UserByUsernameRepository {
  UserByUsernameDataBloc(
    Future<User> Function([
      UserByUsernameReadFilter? filter,
    ])
        loader,
  ) : super(UserByUsernameRepository.read);
}
