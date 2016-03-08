# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'ms_rest_azure'

module Azure::ARM::Graph
  autoload :ApplicationOperations,                              'azure_mgmt_graph/application_operations.rb'
  autoload :ObjectOperations,                                   'azure_mgmt_graph/object_operations.rb'
  autoload :GroupOperations,                                    'azure_mgmt_graph/group_operations.rb'
  autoload :ServicePrincipalOperations,                         'azure_mgmt_graph/service_principal_operations.rb'
  autoload :UserOperations,                                     'azure_mgmt_graph/user_operations.rb'
  autoload :GraphRbacManagementClient,                          'azure_mgmt_graph/graph_rbac_management_client.rb'

  module Models
    autoload :KeyCredential,                                      'azure_mgmt_graph/models/key_credential.rb'
    autoload :PasswordCredential,                                 'azure_mgmt_graph/models/password_credential.rb'
    autoload :ApplicationCreateParameters,                        'azure_mgmt_graph/models/application_create_parameters.rb'
    autoload :ApplicationFilter,                                  'azure_mgmt_graph/models/application_filter.rb'
    autoload :Application,                                        'azure_mgmt_graph/models/application.rb'
    autoload :ApplicationListResult,                              'azure_mgmt_graph/models/application_list_result.rb'
    autoload :GetObjectsParameters,                               'azure_mgmt_graph/models/get_objects_parameters.rb'
    autoload :AADObject,                                          'azure_mgmt_graph/models/aadobject.rb'
    autoload :GetObjectsResult,                                   'azure_mgmt_graph/models/get_objects_result.rb'
    autoload :GroupAddMemberParameters,                           'azure_mgmt_graph/models/group_add_member_parameters.rb'
    autoload :GroupCreateParameters,                              'azure_mgmt_graph/models/group_create_parameters.rb'
    autoload :ADGroup,                                            'azure_mgmt_graph/models/adgroup.rb'
    autoload :GroupListResult,                                    'azure_mgmt_graph/models/group_list_result.rb'
    autoload :GroupGetMemberGroupsParameters,                     'azure_mgmt_graph/models/group_get_member_groups_parameters.rb'
    autoload :GroupGetMemberGroupsResult,                         'azure_mgmt_graph/models/group_get_member_groups_result.rb'
    autoload :ServicePrincipalCreateParameters,                   'azure_mgmt_graph/models/service_principal_create_parameters.rb'
    autoload :ServicePrincipal,                                   'azure_mgmt_graph/models/service_principal.rb'
    autoload :ServicePrincipalListResult,                         'azure_mgmt_graph/models/service_principal_list_result.rb'
    autoload :UserCreateParametersPasswordProfile,                'azure_mgmt_graph/models/user_create_parameters_password_profile.rb'
    autoload :UserCreateParameters,                               'azure_mgmt_graph/models/user_create_parameters.rb'
    autoload :User,                                               'azure_mgmt_graph/models/user.rb'
    autoload :UserGetMemberGroupsParameters,                      'azure_mgmt_graph/models/user_get_member_groups_parameters.rb'
    autoload :UserGetMemberGroupsResult,                          'azure_mgmt_graph/models/user_get_member_groups_result.rb'
    autoload :UserListResult,                                     'azure_mgmt_graph/models/user_list_result.rb'
  end
end
