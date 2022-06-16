# openapi.api.PetApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://petstore.swagger.io/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findPetByStatusList**](PetApi.md#findpetbystatuslist) | **GET** /pet/findByStatus | Finds Pets by status
[**findPetByTagList**](PetApi.md#findpetbytaglist) | **GET** /pet/findByTags | Finds Pets by tags
[**imageCreate**](PetApi.md#imagecreate) | **POST** /pet/{petId}/uploadImage | uploads an image
[**petCreate**](PetApi.md#petcreate) | **POST** /pet | Add a new pet to the store
[**petDelete**](PetApi.md#petdelete) | **DELETE** /pet/{petId} | Deletes a pet
[**petRead**](PetApi.md#petread) | **GET** /pet/{petId} | Find pet by ID
[**petUpdate**](PetApi.md#petupdate) | **PUT** /pet | Update an existing pet
[**petWithFormUpdate**](PetApi.md#petwithformupdate) | **POST** /pet/{petId} | Updates a pet in the store with form data


# **findPetByStatusList**
> BuiltList<Pet> findPetByStatusList(status)

Finds Pets by status

Multiple status values can be provided with comma separated strings

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: petstore_auth
//defaultApiClient.getAuthentication<OAuth>('petstore_auth').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Openapi().getPetApi();
final BuiltList<String> status = ; // BuiltList<String> | Status values that need to be considered for filter

try {
    final response = api.findPetByStatusList(status);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PetApi->findPetByStatusList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**BuiltList&lt;String&gt;**](String.md)| Status values that need to be considered for filter | 

### Return type

[**BuiltList&lt;Pet&gt;**](Pet.md)

### Authorization

[petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPetByTagList**
> BuiltList<Pet> findPetByTagList(tags)

Finds Pets by tags

Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: petstore_auth
//defaultApiClient.getAuthentication<OAuth>('petstore_auth').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Openapi().getPetApi();
final BuiltList<String> tags = ; // BuiltList<String> | Tags to filter by

try {
    final response = api.findPetByTagList(tags);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PetApi->findPetByTagList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**BuiltList&lt;String&gt;**](String.md)| Tags to filter by | 

### Return type

[**BuiltList&lt;Pet&gt;**](Pet.md)

### Authorization

[petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imageCreate**
> ApiResponse imageCreate(petId, additionalMetadata, file)

uploads an image

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: petstore_auth
//defaultApiClient.getAuthentication<OAuth>('petstore_auth').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Openapi().getPetApi();
final int petId = 789; // int | ID of pet to update
final String additionalMetadata = additionalMetadata_example; // String | Additional data to pass to server
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | file to upload

try {
    final response = api.imageCreate(petId, additionalMetadata, file);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PetApi->imageCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **petId** | **int**| ID of pet to update | 
 **additionalMetadata** | **String**| Additional data to pass to server | [optional] 
 **file** | **MultipartFile**| file to upload | [optional] 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

[petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **petCreate**
> petCreate(body)

Add a new pet to the store

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: petstore_auth
//defaultApiClient.getAuthentication<OAuth>('petstore_auth').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Openapi().getPetApi();
final Pet body = ; // Pet | Pet object that needs to be added to the store

try {
    api.petCreate(body);
} catch on DioError (e) {
    print('Exception when calling PetApi->petCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Pet**](Pet.md)| Pet object that needs to be added to the store | 

### Return type

void (empty response body)

### Authorization

[petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **petDelete**
> petDelete(petId, apiKey)

Deletes a pet

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: petstore_auth
//defaultApiClient.getAuthentication<OAuth>('petstore_auth').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Openapi().getPetApi();
final int petId = 789; // int | Pet id to delete
final String apiKey = apiKey_example; // String | 

try {
    api.petDelete(petId, apiKey);
} catch on DioError (e) {
    print('Exception when calling PetApi->petDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **petId** | **int**| Pet id to delete | 
 **apiKey** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **petRead**
> Pet petRead(petId)

Find pet by ID

Returns a single pet

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = Openapi().getPetApi();
final int petId = 789; // int | ID of pet to return

try {
    final response = api.petRead(petId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PetApi->petRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **petId** | **int**| ID of pet to return | 

### Return type

[**Pet**](Pet.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **petUpdate**
> petUpdate(body)

Update an existing pet

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: petstore_auth
//defaultApiClient.getAuthentication<OAuth>('petstore_auth').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Openapi().getPetApi();
final Pet body = ; // Pet | Pet object that needs to be added to the store

try {
    api.petUpdate(body);
} catch on DioError (e) {
    print('Exception when calling PetApi->petUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Pet**](Pet.md)| Pet object that needs to be added to the store | 

### Return type

void (empty response body)

### Authorization

[petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **petWithFormUpdate**
> petWithFormUpdate(petId, name, status)

Updates a pet in the store with form data

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: petstore_auth
//defaultApiClient.getAuthentication<OAuth>('petstore_auth').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Openapi().getPetApi();
final int petId = 789; // int | ID of pet that needs to be updated
final String name = name_example; // String | Updated name of the pet
final String status = status_example; // String | Updated status of the pet

try {
    api.petWithFormUpdate(petId, name, status);
} catch on DioError (e) {
    print('Exception when calling PetApi->petWithFormUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **petId** | **int**| ID of pet that needs to be updated | 
 **name** | **String**| Updated name of the pet | [optional] 
 **status** | **String**| Updated status of the pet | [optional] 

### Return type

void (empty response body)

### Authorization

[petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

