# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # SAP Business Warehouse Open Hub Destination Linked Service.
    #
    class SapOpenHubLinkedService < LinkedService

      include MsRestAzure


      def initialize
        @type = "SapOpenHub"
      end

      attr_accessor :type

      # @return Host name of the SAP BW instance where the open hub destination
      # is located. Type: string (or Expression with resultType string).
      attr_accessor :server

      # @return System number of the BW system where the open hub destination
      # is located. (Usually a two-digit decimal number represented as a
      # string.) Type: string (or Expression with resultType string).
      attr_accessor :system_number

      # @return Client ID of the client on the BW system where the open hub
      # destination is located. (Usually a three-digit decimal number
      # represented as a string) Type: string (or Expression with resultType
      # string).
      attr_accessor :client_id

      # @return Language of the BW system where the open hub destination is
      # located. The default value is EN. Type: string (or Expression with
      # resultType string).
      attr_accessor :language

      # @return Username to access the SAP BW server where the open hub
      # destination is located. Type: string (or Expression with resultType
      # string).
      attr_accessor :user_name

      # @return [SecretBase] Password to access the SAP BW server where the
      # open hub destination is located.
      attr_accessor :password

      # @return The encrypted credential used for authentication. Credentials
      # are encrypted using the integration runtime credential manager. Type:
      # string (or Expression with resultType string).
      attr_accessor :encrypted_credential


      #
      # Mapper for SapOpenHubLinkedService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SapOpenHub',
          type: {
            name: 'Composite',
            class_name: 'SapOpenHubLinkedService',
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
              server: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.server',
                type: {
                  name: 'Object'
                }
              },
              system_number: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.systemNumber',
                type: {
                  name: 'Object'
                }
              },
              client_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.clientId',
                type: {
                  name: 'Object'
                }
              },
              language: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.language',
                type: {
                  name: 'Object'
                }
              },
              user_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.userName',
                type: {
                  name: 'Object'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.password',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'SecretBase',
                  class_name: 'SecretBase'
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
