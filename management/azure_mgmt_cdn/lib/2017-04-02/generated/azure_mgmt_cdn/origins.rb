# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2017_04_02
  #
  # Use these APIs to manage Azure CDN resources through the Azure Resource
  # Manager. You must make sure that requests made to these resources are
  # secure.
  #
  class Origins
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Origins class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [CdnManagementClient] reference to the CdnManagementClient
    attr_reader :client

    #
    # Lists all of the existing origins within an endpoint.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param profile_name [String] Name of the CDN profile which is unique within
    # the resource group.
    # @param endpoint_name [String] Name of the endpoint under the profile which is
    # unique globally.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<Origin>] operation results.
    #
    def list_by_endpoint(resource_group_name, profile_name, endpoint_name, custom_headers = nil)
      first_page = list_by_endpoint_as_lazy(resource_group_name, profile_name, endpoint_name, custom_headers)
      first_page.get_all_items
    end

    #
    # Lists all of the existing origins within an endpoint.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param profile_name [String] Name of the CDN profile which is unique within
    # the resource group.
    # @param endpoint_name [String] Name of the endpoint under the profile which is
    # unique globally.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_endpoint_with_http_info(resource_group_name, profile_name, endpoint_name, custom_headers = nil)
      list_by_endpoint_async(resource_group_name, profile_name, endpoint_name, custom_headers).value!
    end

    #
    # Lists all of the existing origins within an endpoint.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param profile_name [String] Name of the CDN profile which is unique within
    # the resource group.
    # @param endpoint_name [String] Name of the endpoint under the profile which is
    # unique globally.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_endpoint_async(resource_group_name, profile_name, endpoint_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'endpoint_name is nil' if endpoint_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/endpoints/{endpointName}/origins'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'profileName' => profile_name,'endpointName' => endpoint_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CDN::Mgmt::V2017_04_02::Models::OriginListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets an existing origin within an endpoint.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param profile_name [String] Name of the CDN profile which is unique within
    # the resource group.
    # @param endpoint_name [String] Name of the endpoint under the profile which is
    # unique globally.
    # @param origin_name [String] Name of the origin which is unique within the
    # endpoint.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Origin] operation results.
    #
    def get(resource_group_name, profile_name, endpoint_name, origin_name, custom_headers = nil)
      response = get_async(resource_group_name, profile_name, endpoint_name, origin_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets an existing origin within an endpoint.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param profile_name [String] Name of the CDN profile which is unique within
    # the resource group.
    # @param endpoint_name [String] Name of the endpoint under the profile which is
    # unique globally.
    # @param origin_name [String] Name of the origin which is unique within the
    # endpoint.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, profile_name, endpoint_name, origin_name, custom_headers = nil)
      get_async(resource_group_name, profile_name, endpoint_name, origin_name, custom_headers).value!
    end

    #
    # Gets an existing origin within an endpoint.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param profile_name [String] Name of the CDN profile which is unique within
    # the resource group.
    # @param endpoint_name [String] Name of the endpoint under the profile which is
    # unique globally.
    # @param origin_name [String] Name of the origin which is unique within the
    # endpoint.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, profile_name, endpoint_name, origin_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'endpoint_name is nil' if endpoint_name.nil?
      fail ArgumentError, 'origin_name is nil' if origin_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/endpoints/{endpointName}/origins/{originName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'profileName' => profile_name,'endpointName' => endpoint_name,'originName' => origin_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CDN::Mgmt::V2017_04_02::Models::Origin.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Updates an existing origin within an endpoint.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param profile_name [String] Name of the CDN profile which is unique within
    # the resource group.
    # @param endpoint_name [String] Name of the endpoint under the profile which is
    # unique globally.
    # @param origin_name [String] Name of the origin which is unique within the
    # endpoint.
    # @param origin_update_properties [OriginUpdateParameters] Origin properties
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Origin] operation results.
    #
    def update(resource_group_name, profile_name, endpoint_name, origin_name, origin_update_properties, custom_headers = nil)
      response = update_async(resource_group_name, profile_name, endpoint_name, origin_name, origin_update_properties, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param profile_name [String] Name of the CDN profile which is unique within
    # the resource group.
    # @param endpoint_name [String] Name of the endpoint under the profile which is
    # unique globally.
    # @param origin_name [String] Name of the origin which is unique within the
    # endpoint.
    # @param origin_update_properties [OriginUpdateParameters] Origin properties
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def update_async(resource_group_name, profile_name, endpoint_name, origin_name, origin_update_properties, custom_headers = nil)
      # Send request
      promise = begin_update_async(resource_group_name, profile_name, endpoint_name, origin_name, origin_update_properties, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::CDN::Mgmt::V2017_04_02::Models::Origin.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Updates an existing origin within an endpoint.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param profile_name [String] Name of the CDN profile which is unique within
    # the resource group.
    # @param endpoint_name [String] Name of the endpoint under the profile which is
    # unique globally.
    # @param origin_name [String] Name of the origin which is unique within the
    # endpoint.
    # @param origin_update_properties [OriginUpdateParameters] Origin properties
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Origin] operation results.
    #
    def begin_update(resource_group_name, profile_name, endpoint_name, origin_name, origin_update_properties, custom_headers = nil)
      response = begin_update_async(resource_group_name, profile_name, endpoint_name, origin_name, origin_update_properties, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Updates an existing origin within an endpoint.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param profile_name [String] Name of the CDN profile which is unique within
    # the resource group.
    # @param endpoint_name [String] Name of the endpoint under the profile which is
    # unique globally.
    # @param origin_name [String] Name of the origin which is unique within the
    # endpoint.
    # @param origin_update_properties [OriginUpdateParameters] Origin properties
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_update_with_http_info(resource_group_name, profile_name, endpoint_name, origin_name, origin_update_properties, custom_headers = nil)
      begin_update_async(resource_group_name, profile_name, endpoint_name, origin_name, origin_update_properties, custom_headers).value!
    end

    #
    # Updates an existing origin within an endpoint.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param profile_name [String] Name of the CDN profile which is unique within
    # the resource group.
    # @param endpoint_name [String] Name of the endpoint under the profile which is
    # unique globally.
    # @param origin_name [String] Name of the origin which is unique within the
    # endpoint.
    # @param origin_update_properties [OriginUpdateParameters] Origin properties
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_update_async(resource_group_name, profile_name, endpoint_name, origin_name, origin_update_properties, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'endpoint_name is nil' if endpoint_name.nil?
      fail ArgumentError, 'origin_name is nil' if origin_name.nil?
      fail ArgumentError, 'origin_update_properties is nil' if origin_update_properties.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CDN::Mgmt::V2017_04_02::Models::OriginUpdateParameters.mapper()
      request_content = @client.serialize(request_mapper,  origin_update_properties)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/endpoints/{endpointName}/origins/{originName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'profileName' => profile_name,'endpointName' => endpoint_name,'originName' => origin_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:patch, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CDN::Mgmt::V2017_04_02::Models::Origin.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 202
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CDN::Mgmt::V2017_04_02::Models::Origin.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists all of the existing origins within an endpoint.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [OriginListResult] operation results.
    #
    def list_by_endpoint_next(next_page_link, custom_headers = nil)
      response = list_by_endpoint_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists all of the existing origins within an endpoint.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_endpoint_next_with_http_info(next_page_link, custom_headers = nil)
      list_by_endpoint_next_async(next_page_link, custom_headers).value!
    end

    #
    # Lists all of the existing origins within an endpoint.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_endpoint_next_async(next_page_link, custom_headers = nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CDN::Mgmt::V2017_04_02::Models::OriginListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists all of the existing origins within an endpoint.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param profile_name [String] Name of the CDN profile which is unique within
    # the resource group.
    # @param endpoint_name [String] Name of the endpoint under the profile which is
    # unique globally.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [OriginListResult] which provide lazy access to pages of the
    # response.
    #
    def list_by_endpoint_as_lazy(resource_group_name, profile_name, endpoint_name, custom_headers = nil)
      response = list_by_endpoint_async(resource_group_name, profile_name, endpoint_name, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_endpoint_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

  end
end
