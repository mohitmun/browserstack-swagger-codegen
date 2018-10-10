# SwaggerClient::BuildsApi

All URIs are relative to *https://api-cloud.browserstack.com/app-automate*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_builds**](BuildsApi.md#list_builds) | **GET** /builds | List all builds


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

api_instance = SwaggerClient::BuildsApi.new

opts = { 
  limit: 56 # Integer | How many items to return at one time (max 100)
}

begin
  #List all builds
  result = api_instance.list_builds(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BuildsApi->list_builds: #{e}"
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



