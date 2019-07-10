# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # Azure ML Web Service linked service.
    #
    class AzureMLLinkedService < LinkedService

      include MsRestAzure


      def initialize
        @type = "AzureML"
      end

      attr_accessor :type

      # @return The Batch Execution REST URL for an Azure ML Web Service
      # endpoint. Type: string (or Expression with resultType string).
      attr_accessor :ml_endpoint

      # @return [SecretBase] The API key for accessing the Azure ML model
      # endpoint.
      attr_accessor :api_key

      # @return The Update Resource REST URL for an Azure ML Web Service
      # endpoint. Type: string (or Expression with resultType string).
      attr_accessor :update_resource_endpoint

      # @return The ID of the service principal used to authenticate against
      # the ARM-based updateResourceEndpoint of an Azure ML web service. Type:
      # string (or Expression with resultType string).
      attr_accessor :service_principal_id

      # @return [SecretBase] The key of the service principal used to
      # authenticate against the ARM-based updateResourceEndpoint of an Azure
      # ML web service.
      attr_accessor :service_principal_key

      # @return The name or ID of the tenant to which the service principal
      # belongs. Type: string (or Expression with resultType string).
      attr_accessor :tenant

      # @return The encrypted credential used for authentication. Credentials
      # are encrypted using the integration runtime credential manager. Type:
      # string (or Expression with resultType string).
      attr_accessor :encrypted_credential


      #
      # Mapper for AzureMLLinkedService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureML',
          type: {
            name: 'Composite',
            class_name: 'AzureMLLinkedService',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              connect_via: {
                client_side_validation: true,
                required: false,
                serialized_name: 'connectVia',
                type: {
                  name: 'Composite',
                  class_name: 'IntegrationRuntimeReference'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ParameterSpecificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ParameterSpecification'
                      }
                  }
                }
              },
              annotations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'annotations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              ml_endpoint: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.mlEndpoint',
                type: {
                  name: 'Object'
                }
              },
              api_key: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.apiKey',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'SecretBase',
                  class_name: 'SecretBase'
                }
              },
              update_resource_endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.updateResourceEndpoint',
                type: {
                  name: 'Object'
                }
              },
              service_principal_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.servicePrincipalId',
                type: {
                  name: 'Object'
                }
              },
              service_principal_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.servicePrincipalKey',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'SecretBase',
                  class_name: 'SecretBase'
                }
              },
              tenant: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.tenant',
                type: {
                  name: 'Object'
                }
              },
              encrypted_credential: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.encryptedCredential',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
