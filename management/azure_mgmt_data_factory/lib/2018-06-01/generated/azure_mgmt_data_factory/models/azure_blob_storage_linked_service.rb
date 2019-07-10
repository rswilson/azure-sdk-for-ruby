# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # The azure blob storage linked service.
    #
    class AzureBlobStorageLinkedService < LinkedService

      include MsRestAzure


      def initialize
        @type = "AzureBlobStorage"
      end

      attr_accessor :type

      # @return The connection string. It is mutually exclusive with sasUri,
      # serviceEndpoint property. Type: string, SecureString or
      # AzureKeyVaultSecretReference.
      attr_accessor :connection_string

      # @return [AzureKeyVaultSecretReference] The Azure key vault secret
      # reference of accountKey in connection string.
      attr_accessor :account_key

      # @return SAS URI of the Azure Blob Storage resource. It is mutually
      # exclusive with connectionString, serviceEndpoint property. Type:
      # string, SecureString or AzureKeyVaultSecretReference.
      attr_accessor :sas_uri

      # @return [AzureKeyVaultSecretReference] The Azure key vault secret
      # reference of sasToken in sas uri.
      attr_accessor :sas_token

      # @return [String] Blob service endpoint of the Azure Blob Storage
      # resource. It is mutually exclusive with connectionString, sasUri
      # property.
      attr_accessor :service_endpoint

      # @return The ID of the service principal used to authenticate against
      # Azure SQL Data Warehouse. Type: string (or Expression with resultType
      # string).
      attr_accessor :service_principal_id

      # @return [SecretBase] The key of the service principal used to
      # authenticate against Azure SQL Data Warehouse.
      attr_accessor :service_principal_key

      # @return The name or ID of the tenant to which the service principal
      # belongs. Type: string (or Expression with resultType string).
      attr_accessor :tenant

      # @return [String] The encrypted credential used for authentication.
      # Credentials are encrypted using the integration runtime credential
      # manager. Type: string (or Expression with resultType string).
      attr_accessor :encrypted_credential


      #
      # Mapper for AzureBlobStorageLinkedService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureBlobStorage',
          type: {
            name: 'Composite',
            class_name: 'AzureBlobStorageLinkedService',
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
              connection_string: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.connectionString',
                type: {
                  name: 'Object'
                }
              },
              account_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.accountKey',
                type: {
                  name: 'Composite',
                  class_name: 'AzureKeyVaultSecretReference'
                }
              },
              sas_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.sasUri',
                type: {
                  name: 'Object'
                }
              },
              sas_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.sasToken',
                type: {
                  name: 'Composite',
                  class_name: 'AzureKeyVaultSecretReference'
                }
              },
              service_endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.serviceEndpoint',
                type: {
                  name: 'String'
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
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
