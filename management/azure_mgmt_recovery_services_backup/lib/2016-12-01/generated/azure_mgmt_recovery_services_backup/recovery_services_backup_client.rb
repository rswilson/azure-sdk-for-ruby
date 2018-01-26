# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  #
  # A service client - single point of access to the REST API.
  #
  class RecoveryServicesBackupClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] The subscription Id.
    attr_accessor :subscription_id

    # @return [String] Client Api Version.
    attr_reader :api_version

    # @return [String] Gets or sets the preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] Gets or sets the retry timeout in seconds for Long
    # Running Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] When set to true a unique x-ms-client-request-id value
    # is generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return [BackupResourceVaultConfigs] backup_resource_vault_configs
    attr_reader :backup_resource_vault_configs

    # @return [BackupEngines] backup_engines
    attr_reader :backup_engines

    # @return [ProtectionContainerRefreshOperationResults]
    # protection_container_refresh_operation_results
    attr_reader :protection_container_refresh_operation_results

    # @return [ProtectionContainers] protection_containers
    attr_reader :protection_containers

    # @return [ProtectionContainerOperationResults]
    # protection_container_operation_results
    attr_reader :protection_container_operation_results

    # @return [ProtectedItems] protected_items
    attr_reader :protected_items

    # @return [Backups] backups
    attr_reader :backups

    # @return [ProtectedItemOperationResults] protected_item_operation_results
    attr_reader :protected_item_operation_results

    # @return [ProtectedItemOperationStatuses]
    # protected_item_operation_statuses
    attr_reader :protected_item_operation_statuses

    # @return [RecoveryPoints] recovery_points
    attr_reader :recovery_points

    # @return [ItemLevelRecoveryConnections] item_level_recovery_connections
    attr_reader :item_level_recovery_connections

    # @return [Restores] restores
    attr_reader :restores

    # @return [JobCancellations] job_cancellations
    attr_reader :job_cancellations

    # @return [JobOperationResults] job_operation_results
    attr_reader :job_operation_results

    # @return [ExportJobsOperationResults] export_jobs_operation_results
    attr_reader :export_jobs_operation_results

    # @return [Jobs] jobs
    attr_reader :jobs

    # @return [BackupOperationResults] backup_operation_results
    attr_reader :backup_operation_results

    # @return [BackupOperationStatuses] backup_operation_statuses
    attr_reader :backup_operation_statuses

    # @return [BackupPolicies] backup_policies
    attr_reader :backup_policies

    # @return [ProtectionPolicies] protection_policies
    attr_reader :protection_policies

    # @return [ProtectionPolicyOperationResults]
    # protection_policy_operation_results
    attr_reader :protection_policy_operation_results

    # @return [ProtectionPolicyOperationStatuses]
    # protection_policy_operation_statuses
    attr_reader :protection_policy_operation_statuses

    # @return [BackupProtectableItems] backup_protectable_items
    attr_reader :backup_protectable_items

    # @return [BackupProtectedItems] backup_protected_items
    attr_reader :backup_protected_items

    # @return [BackupProtectionContainers] backup_protection_containers
    attr_reader :backup_protection_containers

    # @return [SecurityPINs] security_pins
    attr_reader :security_pins

    # @return [BackupResourceStorageConfigs] backup_resource_storage_configs
    attr_reader :backup_resource_storage_configs

    # @return [BackupUsageSummaries] backup_usage_summaries
    attr_reader :backup_usage_summaries

    #
    # Creates initializes a new instance of the RecoveryServicesBackupClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @backup_resource_vault_configs = BackupResourceVaultConfigs.new(self)
      @backup_engines = BackupEngines.new(self)
      @protection_container_refresh_operation_results = ProtectionContainerRefreshOperationResults.new(self)
      @protection_containers = ProtectionContainers.new(self)
      @protection_container_operation_results = ProtectionContainerOperationResults.new(self)
      @protected_items = ProtectedItems.new(self)
      @backups = Backups.new(self)
      @protected_item_operation_results = ProtectedItemOperationResults.new(self)
      @protected_item_operation_statuses = ProtectedItemOperationStatuses.new(self)
      @recovery_points = RecoveryPoints.new(self)
      @item_level_recovery_connections = ItemLevelRecoveryConnections.new(self)
      @restores = Restores.new(self)
      @job_cancellations = JobCancellations.new(self)
      @job_operation_results = JobOperationResults.new(self)
      @export_jobs_operation_results = ExportJobsOperationResults.new(self)
      @jobs = Jobs.new(self)
      @backup_operation_results = BackupOperationResults.new(self)
      @backup_operation_statuses = BackupOperationStatuses.new(self)
      @backup_policies = BackupPolicies.new(self)
      @protection_policies = ProtectionPolicies.new(self)
      @protection_policy_operation_results = ProtectionPolicyOperationResults.new(self)
      @protection_policy_operation_statuses = ProtectionPolicyOperationStatuses.new(self)
      @backup_protectable_items = BackupProtectableItems.new(self)
      @backup_protected_items = BackupProtectedItems.new(self)
      @backup_protection_containers = BackupProtectionContainers.new(self)
      @security_pins = SecurityPINs.new(self)
      @backup_resource_storage_configs = BackupResourceStorageConfigs.new(self)
      @backup_usage_summaries = BackupUsageSummaries.new(self)
      @api_version = '2016-12-01'
      @accept_language = 'en-US'
      @long_running_operation_retry_timeout = 30
      @generate_client_request_id = true
      add_telemetry
    end

    #
    # Makes a request and returns the body of the response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Hash{String=>String}] containing the body of the response.
    # Example:
    #
    #  request_content = "{'location':'westus','tags':{'tag1':'val1','tag2':'val2'}}"
    #  path = "/path"
    #  options = {
    #    body: request_content,
    #    query_params: {'api-version' => '2016-02-01'}
    #  }
    #  result = @client.make_request(:put, path, options)
    #
    def make_request(method, path, options = {})
      result = make_request_with_http_info(method, path, options)
      result.body unless result.nil?
    end

    #
    # Makes a request and returns the operation response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [MsRestAzure::AzureOperationResponse] Operation response containing the request, response and status.
    #
    def make_request_with_http_info(method, path, options = {})
      result = make_request_async(method, path, options).value!
      result.body = result.response.body.to_s.empty? ? nil : JSON.load(result.response.body)
      result
    end

    #
    # Makes a request asynchronously.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def make_request_async(method, path, options = {})
      fail ArgumentError, 'method is nil' if method.nil?
      fail ArgumentError, 'path is nil' if path.nil?

      request_url = options[:base_url] || @base_url
      if(!options[:headers].nil? && !options[:headers]['Content-Type'].nil?)
        @request_headers['Content-Type'] = options[:headers]['Content-Type']
      end

      request_headers = @request_headers
      request_headers.merge!({'accept-language' => @accept_language}) unless @accept_language.nil?
      options.merge!({headers: request_headers.merge(options[:headers] || {})})
      options.merge!({credentials: @credentials}) unless @credentials.nil?

      super(request_url, method, path, options)
    end


    private
    #
    # Adds telemetry information.
    #
    def add_telemetry
        sdk_information = 'azure_mgmt_recovery_services_backup'
        sdk_information = "#{sdk_information}/0.15.2"
        add_user_agent_information(sdk_information)
    end
  end
end
