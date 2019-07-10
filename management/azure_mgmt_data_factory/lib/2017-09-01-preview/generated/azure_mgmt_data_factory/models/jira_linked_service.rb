# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # Jira Service linked service.
    #
    class JiraLinkedService < LinkedService

      include MsRestAzure


      def initialize
        @type = "Jira"
      end

      attr_accessor :type

      # @return The IP address or host name of the Jira service. (e.g.
      # jira.example.com)
      attr_accessor :host

      # @return The TCP port that the Jira server uses to listen for client
      # connections. The default value is 443 if connecting through HTTPS, or
      # 8080 if connecting through HTTP.
      attr_accessor :port

      # @return The user name that you use to access Jira Service.
      attr_accessor :username

      # @return [SecretBase] The password corresponding to the user name that
      # you provided in the username field.
      attr_accessor :password

      # @return Specifies whether the data source endpoints are encrypted using
      # HTTPS. The default value is true.
      attr_accessor :use_encrypted_endpoints

      # @return Specifies whether to require the host name in the server's
      # certificate to match the host name of the server when connecting over
      # SSL. The default value is true.
      attr_accessor :use_host_verification

      # @return Specifies whether to verify the identity of the server when
      # connecting over SSL. The default value is true.
      attr_accessor :use_peer_verification

      # @return The encrypted credential used for authentication. Credentials
      # are encrypted using the integration runtime credential manager. Type:
      # string (or Expression with resultType string).
      attr_accessor :encrypted_credential


      #
      # Mapper for JiraLinkedService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Jira',
          type: {
            name: 'Composite',
            class_name: 'JiraLinkedService',
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
              host: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.host',
                type: {
                  name: 'Object'
                }
              },
              port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.port',
                type: {
                  name: 'Object'
                }
              },
              username: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.username',
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
              use_encrypted_endpoints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.useEncryptedEndpoints',
                type: {
                  name: 'Object'
                }
              },
              use_host_verification: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.useHostVerification',
                type: {
                  name: 'Object'
                }
              },
              use_peer_verification: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.usePeerVerification',
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
