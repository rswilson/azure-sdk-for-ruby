# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Qnamaker::V4_0
  #
  # An API for QnAMaker Service
  #
  class Alterations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Alterations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [QnamakerClient] reference to the QnamakerClient
    attr_reader :client

    #
    # Download alterations from runtime.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [WordAlterationsDTO] operation results.
    #
    def get(custom_headers:nil)
      response = get_async(custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Download alterations from runtime.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(custom_headers:nil)
      get_async(custom_headers:custom_headers).value!
    end

    #
    # Download alterations from runtime.
    #
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'alterations'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
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
            result_mapper = Azure::CognitiveServices::Qnamaker::V4_0::Models::WordAlterationsDTO.mapper()
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
    # Replace alterations data.
    #
    # @param word_alterations [WordAlterationsDTO] New alterations data.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def replace(word_alterations, custom_headers:nil)
      response = replace_async(word_alterations, custom_headers:custom_headers).value!
      nil
    end

    #
    # Replace alterations data.
    #
    # @param word_alterations [WordAlterationsDTO] New alterations data.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def replace_with_http_info(word_alterations, custom_headers:nil)
      replace_async(word_alterations, custom_headers:custom_headers).value!
    end

    #
    # Replace alterations data.
    #
    # @param word_alterations [WordAlterationsDTO] New alterations data.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def replace_async(word_alterations, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'word_alterations is nil' if word_alterations.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::Qnamaker::V4_0::Models::WordAlterationsDTO.mapper()
      request_content = @client.serialize(request_mapper,  word_alterations)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'alterations'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end