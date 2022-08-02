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

//Typdef for PetRetrieveState

typedef PetRetrieveState = Data<Pet, PetRetrieveFilter>;

//Filter for PetRetrieveFilter

@freezed
class PetRetrieveFilter with _$PetRetrieveFilter {
  const PetRetrieveFilter._();

  const factory PetRetrieveFilter({
    required int petId,
  }) = _PetRetrieveFilter;

  factory PetRetrieveFilter.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$PetRetrieveFilterFromJson(map);
}

// Repository for PetRepository

abstract class PetRepository {
  static Future<Pet> retrieve([
    PetRetrieveFilter? filter,
  ]) async {
    if (filter == null) {
      throw Exception('Invalid filter');
    }
    final r = await ApiRepository.instance.pet.petRetrieve(
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

  Future<void> destroy({
    required int petId,
    String? apiKey,
  }) async {
    final r = (await ApiRepository.instance.pet.petDestroy(
      petId: petId,
      apiKey: apiKey,
    ));

    return r.data;
  }
}

// DataCubit for Pet

class PetDataBloc extends DataCubit<Pet, PetRetrieveFilter> with PetRepository {
  PetDataBloc(
    Future<Pet> Function([
      PetRetrieveFilter? filter,
    ])
        loader,
  ) : super(PetRepository.retrieve);

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
  Future<void> destroy({
    required int petId,
    String? apiKey,
  }) async {
    final r = await super.destroy(
      petId: petId,
      apiKey: apiKey,
    );
    await super.load(state.filter);

    return r;
  }
}

//Typdef for OrderRetrieveState

typedef OrderRetrieveState = Data<Order, OrderRetrieveFilter>;

//Filter for OrderRetrieveFilter

@freezed
class OrderRetrieveFilter with _$OrderRetrieveFilter {
  const OrderRetrieveFilter._();

  const factory OrderRetrieveFilter({
    required int orderId,
  }) = _OrderRetrieveFilter;

  factory OrderRetrieveFilter.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$OrderRetrieveFilterFromJson(map);
}

// Repository for OrderRepository

abstract class OrderRepository {
  static Future<Order> retrieve([
    OrderRetrieveFilter? filter,
  ]) async {
    if (filter == null) {
      throw Exception('Invalid filter');
    }
    final r = await ApiRepository.instance.store.orderRetrieve(
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

  Future<void> destroy({
    required int orderId,
  }) async {
    final r = (await ApiRepository.instance.store.orderDestroy(
      orderId: orderId,
    ));

    return r.data;
  }
}

// DataCubit for Order

class OrderDataBloc extends DataCubit<Order, OrderRetrieveFilter>
    with OrderRepository {
  OrderDataBloc(
    Future<Order> Function([
      OrderRetrieveFilter? filter,
    ])
        loader,
  ) : super(OrderRepository.retrieve);

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
  Future<void> destroy({
    required int orderId,
  }) async {
    final r = await super.destroy(
      orderId: orderId,
    );
    await super.load(state.filter);

    return r;
  }
}

//Typdef for UserByUsernameRetrieveState

typedef UserByUsernameRetrieveState = Data<User, UserByUsernameRetrieveFilter>;

//Filter for UserByUsernameRetrieveFilter

@freezed
class UserByUsernameRetrieveFilter with _$UserByUsernameRetrieveFilter {
  const UserByUsernameRetrieveFilter._();

  const factory UserByUsernameRetrieveFilter({
    required String username,
  }) = _UserByUsernameRetrieveFilter;

  factory UserByUsernameRetrieveFilter.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$UserByUsernameRetrieveFilterFromJson(map);
}

// Repository for UserByUsernameRepository

abstract class UserByUsernameRepository {
  static Future<User> retrieve([
    UserByUsernameRetrieveFilter? filter,
  ]) async {
    if (filter == null) {
      throw Exception('Invalid filter');
    }
    final r = await ApiRepository.instance.user.userByUsernameRetrieve(
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

class UserByUsernameDataBloc
    extends DataCubit<User, UserByUsernameRetrieveFilter>
    with UserByUsernameRepository {
  UserByUsernameDataBloc(
    Future<User> Function([
      UserByUsernameRetrieveFilter? filter,
    ])
        loader,
  ) : super(UserByUsernameRepository.retrieve);
}
