require 'swagger_client'

SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = ENV['BROWSERSTACK_USERNAME']
  config.password = ENV['BROWSERSTACK_ACCESS_KEY']
end

@api_instance = SwaggerClient::AppAutomateApi.new

opts = {
  limit: 2 # Integer | How many items to return at one time (max 100)
}

begin
  #List all builds
  @builds = @api_instance.list_builds(opts)
  # upload app
  @upload_app_response = @api_instance.upload_app(file: File.open("./app-debug.apk"))
  puts "Uploaded app url #{@upload_app_response.app_url}"
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PetsApi->list_builds: #{e}"
end
