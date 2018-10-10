=begin
#BrowserStack Api

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module SwaggerClient
  class BuildsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List all builds
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit How many items to return at one time (max 100)
    # @return [Array<AutomationBuildWrapper>]
    def list_builds(opts = {})
      data, _status_code, _headers = list_builds_with_http_info(opts)
      return data
    end

    # List all builds
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit How many items to return at one time (max 100)
    # @return [Array<(Array<AutomationBuildWrapper>, Fixnum, Hash)>] Array<AutomationBuildWrapper> data, response status code and response headers
    def list_builds_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BuildsApi.list_builds ..."
      end
      # resource path
      local_var_path = "/builds"

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<AutomationBuildWrapper>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BuildsApi#list_builds\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
