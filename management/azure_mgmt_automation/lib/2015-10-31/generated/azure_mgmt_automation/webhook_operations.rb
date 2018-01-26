# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  #
  # Automation Client
  #
  class WebhookOperations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the WebhookOperations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [AutomationClient] reference to the AutomationClient
    attr_reader :client

    #
    # Generates a Uri for use in creating a webhook.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [String] operation results.
    #
    def generate_uri(resource_group_name, automation_account_name, custom_headers = nil)
      response = generate_uri_async(resource_group_name, automation_account_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Generates a Uri for use in creating a webhook.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def generate_uri_with_http_info(resource_group_name, automation_account_name, custom_headers = nil)
      generate_uri_async(resource_group_name, automation_account_name, custom_headers).value!
    end

    #
    # Generates a Uri for use in creating a webhook.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def generate_uri_async(resource_group_name, automation_account_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'automation_account_name is nil' if automation_account_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/webhooks/generateUri'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'automationAccountName' => automation_account_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

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
            result_mapper = {
              client_side_validation: true,
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'String'
              }
            }
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
    # Delete the webhook by name.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param webhook_name [String] The webhook name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, automation_account_name, webhook_name, custom_headers = nil)
      response = delete_async(resource_group_name, automation_account_name, webhook_name, custom_headers).value!
      nil
    end

    #
    # Delete the webhook by name.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param webhook_name [String] The webhook name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, automation_account_name, webhook_name, custom_headers = nil)
      delete_async(resource_group_name, automation_account_name, webhook_name, custom_headers).value!
    end

    #
    # Delete the webhook by name.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param webhook_name [String] The webhook name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, automation_account_name, webhook_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'automation_account_name is nil' if automation_account_name.nil?
      fail ArgumentError, 'webhook_name is nil' if webhook_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/webhooks/{webhookName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'automationAccountName' => automation_account_name,'webhookName' => webhook_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Retrieve the webhook identified by webhook name.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param webhook_name [String] The webhook name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Webhook] operation results.
    #
    def get(resource_group_name, automation_account_name, webhook_name, custom_headers = nil)
      response = get_async(resource_group_name, automation_account_name, webhook_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieve the webhook identified by webhook name.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param webhook_name [String] The webhook name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, automation_account_name, webhook_name, custom_headers = nil)
      get_async(resource_group_name, automation_account_name, webhook_name, custom_headers).value!
    end

    #
    # Retrieve the webhook identified by webhook name.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param webhook_name [String] The webhook name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, automation_account_name, webhook_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'automation_account_name is nil' if automation_account_name.nil?
      fail ArgumentError, 'webhook_name is nil' if webhook_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/webhooks/{webhookName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'automationAccountName' => automation_account_name,'webhookName' => webhook_name,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::Webhook.mapper()
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
    # Create the webhook identified by webhook name.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param webhook_name [String] The webhook name.
    # @param parameters [WebhookCreateOrUpdateParameters] The create or update
    # parameters for webhook.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Webhook] operation results.
    #
    def create_or_update(resource_group_name, automation_account_name, webhook_name, parameters, custom_headers = nil)
      response = create_or_update_async(resource_group_name, automation_account_name, webhook_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create the webhook identified by webhook name.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param webhook_name [String] The webhook name.
    # @param parameters [WebhookCreateOrUpdateParameters] The create or update
    # parameters for webhook.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, automation_account_name, webhook_name, parameters, custom_headers = nil)
      create_or_update_async(resource_group_name, automation_account_name, webhook_name, parameters, custom_headers).value!
    end

    #
    # Create the webhook identified by webhook name.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param webhook_name [String] The webhook name.
    # @param parameters [WebhookCreateOrUpdateParameters] The create or update
    # parameters for webhook.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, automation_account_name, webhook_name, parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'automation_account_name is nil' if automation_account_name.nil?
      fail ArgumentError, 'webhook_name is nil' if webhook_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::WebhookCreateOrUpdateParameters.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/webhooks/{webhookName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'automationAccountName' => automation_account_name,'webhookName' => webhook_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::Webhook.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::Webhook.mapper()
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
    # Update the webhook identified by webhook name.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param webhook_name [String] The webhook name.
    # @param parameters [WebhookUpdateParameters] The update parameters for
    # webhook.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Webhook] operation results.
    #
    def update(resource_group_name, automation_account_name, webhook_name, parameters, custom_headers = nil)
      response = update_async(resource_group_name, automation_account_name, webhook_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Update the webhook identified by webhook name.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param webhook_name [String] The webhook name.
    # @param parameters [WebhookUpdateParameters] The update parameters for
    # webhook.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_with_http_info(resource_group_name, automation_account_name, webhook_name, parameters, custom_headers = nil)
      update_async(resource_group_name, automation_account_name, webhook_name, parameters, custom_headers).value!
    end

    #
    # Update the webhook identified by webhook name.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param webhook_name [String] The webhook name.
    # @param parameters [WebhookUpdateParameters] The update parameters for
    # webhook.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(resource_group_name, automation_account_name, webhook_name, parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'automation_account_name is nil' if automation_account_name.nil?
      fail ArgumentError, 'webhook_name is nil' if webhook_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::WebhookUpdateParameters.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/webhooks/{webhookName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'automationAccountName' => automation_account_name,'webhookName' => webhook_name,'subscriptionId' => @client.subscription_id},
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
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::Webhook.mapper()
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
    # Retrieve a list of webhooks.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param filter [String] The filter to apply on the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<Webhook>] operation results.
    #
    def list_by_automation_account(resource_group_name, automation_account_name, filter = nil, custom_headers = nil)
      first_page = list_by_automation_account_as_lazy(resource_group_name, automation_account_name, filter, custom_headers)
      first_page.get_all_items
    end

    #
    # Retrieve a list of webhooks.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param filter [String] The filter to apply on the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_automation_account_with_http_info(resource_group_name, automation_account_name, filter = nil, custom_headers = nil)
      list_by_automation_account_async(resource_group_name, automation_account_name, filter, custom_headers).value!
    end

    #
    # Retrieve a list of webhooks.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param filter [String] The filter to apply on the operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_automation_account_async(resource_group_name, automation_account_name, filter = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'automation_account_name is nil' if automation_account_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/webhooks'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'automationAccountName' => automation_account_name,'subscriptionId' => @client.subscription_id},
          query_params: {'$filter' => filter,'api-version' => @client.api_version},
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
            result_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::WebhookListResult.mapper()
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
    # Retrieve a list of webhooks.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [WebhookListResult] operation results.
    #
    def list_by_automation_account_next(next_page_link, custom_headers = nil)
      response = list_by_automation_account_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieve a list of webhooks.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_automation_account_next_with_http_info(next_page_link, custom_headers = nil)
      list_by_automation_account_next_async(next_page_link, custom_headers).value!
    end

    #
    # Retrieve a list of webhooks.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_automation_account_next_async(next_page_link, custom_headers = nil)
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
            result_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::WebhookListResult.mapper()
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
    # Retrieve a list of webhooks.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param filter [String] The filter to apply on the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [WebhookListResult] which provide lazy access to pages of the
    # response.
    #
    def list_by_automation_account_as_lazy(resource_group_name, automation_account_name, filter = nil, custom_headers = nil)
      response = list_by_automation_account_async(resource_group_name, automation_account_name, filter, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_automation_account_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

  end
end
