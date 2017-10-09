# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ResourcesManagement
  #
  # The Azure Management Groups API enables consolidation of multiple
  # subscriptions/resources into an organizational hierarchy and centrally
  # manage access control, policies, alerting and reporting for those
  # resources.
  #
  #
  class ManagementGroups
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ManagementGroups class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ManagementGroupsAPI] reference to the ManagementGroupsAPI
    attr_reader :client

    #
    # List management groups for the authenticated user.
    #
    #
    # @param skiptoken [String] Page continuation token is only used if a previous
    # operation returned a partial result.
    # If a previous response contains a nextLink element, the value of the nextLink
    # element will include a token parameter that specifies a starting point to use
    # for subsequent calls.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<ManagementGroupInfo>] operation results.
    #
    def list(skiptoken = nil, custom_headers = nil)
      first_page = list_as_lazy(skiptoken, custom_headers)
      first_page.get_all_items
    end

    #
    # List management groups for the authenticated user.
    #
    #
    # @param skiptoken [String] Page continuation token is only used if a previous
    # operation returned a partial result.
    # If a previous response contains a nextLink element, the value of the nextLink
    # element will include a token parameter that specifies a starting point to use
    # for subsequent calls.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(skiptoken = nil, custom_headers = nil)
      list_async(skiptoken, custom_headers).value!
    end

    #
    # List management groups for the authenticated user.
    #
    #
    # @param skiptoken [String] Page continuation token is only used if a previous
    # operation returned a partial result.
    # If a previous response contains a nextLink element, the value of the nextLink
    # element will include a token parameter that specifies a starting point to use
    # for subsequent calls.
    #
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(skiptoken = nil, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.Management/managementGroups'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          query_params: {'api-version' => @client.api_version,'$skiptoken' => skiptoken},
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
            result_mapper = Azure::ARM::ResourcesManagement::Models::ManagementGroupListResult.mapper()
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
    # Get the details of the management group.
    #
    #
    # @param expand [Enum] The $expand=children query string parameter allows
    # clients to request inclusion of children in the response payload. Possible
    # values include: 'children'
    # @param recurse [Boolean] The $recurse=true query string parameter allows
    # clients to request inclusion of entire hierarchy in the response payload.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ManagementGroupWithHierarchy] operation results.
    #
    def get(expand = nil, recurse = nil, custom_headers = nil)
      response = get_async(expand, recurse, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get the details of the management group.
    #
    #
    # @param expand [Enum] The $expand=children query string parameter allows
    # clients to request inclusion of children in the response payload. Possible
    # values include: 'children'
    # @param recurse [Boolean] The $recurse=true query string parameter allows
    # clients to request inclusion of entire hierarchy in the response payload.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(expand = nil, recurse = nil, custom_headers = nil)
      get_async(expand, recurse, custom_headers).value!
    end

    #
    # Get the details of the management group.
    #
    #
    # @param expand [Enum] The $expand=children query string parameter allows
    # clients to request inclusion of children in the response payload. Possible
    # values include: 'children'
    # @param recurse [Boolean] The $recurse=true query string parameter allows
    # clients to request inclusion of entire hierarchy in the response payload.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(expand = nil, recurse = nil, custom_headers = nil)
      fail ArgumentError, '@client.group_id is nil' if @client.group_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.Management/managementGroups/{groupId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'groupId' => @client.group_id},
          query_params: {'api-version' => @client.api_version,'$expand' => expand,'$recurse' => recurse},
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
            result_mapper = Azure::ARM::ResourcesManagement::Models::ManagementGroupWithHierarchy.mapper()
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
    # List management groups for the authenticated user.
    #
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ManagementGroupListResult] operation results.
    #
    def list_next(next_page_link, custom_headers = nil)
      response = list_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List management groups for the authenticated user.
    #
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers = nil)
      list_next_async(next_page_link, custom_headers).value!
    end

    #
    # List management groups for the authenticated user.
    #
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers = nil)
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
            result_mapper = Azure::ARM::ResourcesManagement::Models::ManagementGroupListResult.mapper()
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
    # List management groups for the authenticated user.
    #
    #
    # @param skiptoken [String] Page continuation token is only used if a previous
    # operation returned a partial result.
    # If a previous response contains a nextLink element, the value of the nextLink
    # element will include a token parameter that specifies a starting point to use
    # for subsequent calls.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ManagementGroupListResult] which provide lazy access to pages of the
    # response.
    #
    def list_as_lazy(skiptoken = nil, custom_headers = nil)
      response = list_async(skiptoken, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

  end
end