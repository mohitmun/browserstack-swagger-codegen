# SwaggerClient::AppAutomateApi

All URIs are relative to *https://api-cloud.browserstack.com/app-automate*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_builds**](AppAutomateApi.md#list_builds) | **GET** /builds | List all builds
[**upload_app**](AppAutomateApi.md#upload_app) | **POST** /upload | Upload app


# **list_builds**
> Array&lt;AutomationBuildWrapper&gt; list_builds(opts)

List all builds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SwaggerClient::AppAutomateApi.new

opts = { 
  limit: 56 # Integer | How many items to return at one time (max 100)
}

begin
  #List all builds
  result = api_instance.list_builds(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AppAutomateApi->list_builds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| How many items to return at one time (max 100) | [optional] 

### Return type

[**Array&lt;AutomationBuildWrapper&gt;**](AutomationBuildWrapper.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **upload_app**
> InlineResponse200 upload_app(opts)

Upload app

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SwaggerClient::AppAutomateApi.new

opts = { 
  file: File.new("/path/to/file.txt") # File | The app to upload.
}

begin
  #Upload app
  result = api_instance.upload_app(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AppAutomateApi->upload_app: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| The app to upload. | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



