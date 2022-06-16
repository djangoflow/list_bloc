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

//Filter for FindPetByStatusListFilter

@freezed
class FindPetByStatusListFilter with _$FindPetByStatusListFilter {
  const FindPetByStatusListFilter._();

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
  static Future<List<Pet>> listLoader([
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
    Future<List<Pet>> Function([FindPetByStatusListFilter? filter]) loader,
  ) : super(listLoader);
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
  static Future<Order> dataLoader([
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

  Future<void> create({
    required Order body,
  }) async {
    await ApiRepository.instance.store.orderCreate(
      body: body,
    );
  }

  Future<void> delete({
    required int orderId,
  }) async {
    await ApiRepository.instance.store.orderDelete(
      orderId: orderId,
    );
  }
}

// DataCubit for Order

class OrderDataBloc extends DataCubit<Order, OrderReadFilter>
    with OrderRepository {
  OrderDataBloc(
    Future<Order> Function([OrderReadFilter? filter]) loader,
  ) : super(dataLoader);

  @override
  Future<void> create({
    required Order body,
  }) async {
    await super.create(
      body: body,
    );
    await super.load(state.filter);
  }

  @override
  Future<void> delete({
    required int orderId,
  }) async {
    await super.delete(
      orderId: orderId,
    );
    await super.load(state.filter);
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
  static Future<User> dataLoader([
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
    Future<User> Function([UserByUsernameReadFilter? filter]) loader,
  ) : super(dataLoader);
}
