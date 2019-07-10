# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Linked service for MongoDB data source.
    #
    class MongoDbV2LinkedService < LinkedService

      include MsRestAzure


      def initialize
        @type = "MongoDbV2"
      end

      attr_accessor :type

      # @return The MongoDB connection string. Type: string, SecureString or
      # AzureKeyVaultSecretReference. Type: string, SecureString or
      # AzureKeyVaultSecretReference.
      attr_accessor :connection_string

      # @return The name of the MongoDB database that you want to access. Type:
      # string (or Expression with resultType string).
      attr_accessor :database


      #
      # Mapper for MongoDbV2LinkedService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MongoDbV2',
          type: {
            name: 'Composite',
            class_name: 'MongoDbV2LinkedService',
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
                required: true,
                serialized_name: 'typeProperties.connectionString',
                type: {
                  name: 'Object'
                }
              },
              database: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.database',
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
