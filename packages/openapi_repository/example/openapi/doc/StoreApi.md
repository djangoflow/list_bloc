# openapi.api.StoreApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://petstore.swagger.io/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getInventory**](StoreApi.md#getinventory) | **GET** /store/inventory | Returns pet inventories by status
[**orderCreate**](StoreApi.md#ordercreate) | **POST** /store/order | Place an order for a pet
[**orderDelete**](StoreApi.md#orderdelete) | **DELETE** /store/order/{orderId} | Delete purchase order by ID
[**orderRead**](StoreApi.md#orderread) | **GET** /store/order/{orderId} | Find purchase order by ID


# **getInventory**
> BuiltMap<String, int> getInventory()

Returns pet inventories by status

Returns a map of status codes to quantities

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = Openapi().getStoreApi();

try {
    final response = api.getInventory();
    print(response);
} catch on DioError (e) {
    print('Exception when calling StoreApi->getInventory: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**BuiltMap&lt;String, int&gt;**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderCreate**
> Order orderCreate(body)

Place an order for a pet

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getStoreApi();
final Order body = ; // Order | order placed for purchasing the pet

try {
    final response = api.orderCreate(body);
    print(response);
} catch on DioError (e) {
    print('Exception when calling StoreApi->orderCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Order**](Order.md)| order placed for purchasing the pet | 

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderDelete**
> orderDelete(orderId)

Delete purchase order by ID

For valid response try integer IDs with positive integer value. Negative or non-integer values will generate API errors

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getStoreApi();
final int orderId = 789; // int | ID of the order that needs to be deleted

try {
    api.orderDelete(orderId);
} catch on DioError (e) {
    print('Exception when calling StoreApi->orderDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**| ID of the order that needs to be deleted | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderRead**
> Order orderRead(orderId)

Find purchase order by ID

For valid response try integer IDs with value >= 1 and <= 10. Other values will generated exceptions

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getStoreApi();
final int orderId = 789; // int | ID of pet that needs to be fetched

try {
    final response = api.orderRead(orderId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling StoreApi->orderRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**| ID of pet that needs to be fetched | 

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

