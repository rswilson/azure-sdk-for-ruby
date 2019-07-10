# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # Factory resource type.
    #
    class Factory < Resource

      include MsRestAzure

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [FactoryIdentity] Managed service identity of the factory.
      attr_accessor :identity

      # @return [String] Factory provisioning state, example Succeeded.
      attr_accessor :provisioning_state

      # @return [DateTime] Time the factory was created in ISO8601 format.
      attr_accessor :create_time

      # @return [String] Version of the factory.
      attr_accessor :version

      # @return [FactoryVSTSConfiguration] VSTS repo information of the
      # factory.
      attr_accessor :vsts_configuration


      #
      # Mapper for Factory class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Factory',
          type: {
            name: 'Composite',
            class_name: 'Factory',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
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
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'FactoryIdentity'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              create_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.createTime',
                type: {
                  name: 'DateTime'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.version',
                type: {
                  name: 'String'
                }
              },
              vsts_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vstsConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'FactoryVSTSConfiguration'
                }
              }
            }
          }
        }
      end
    end
  end
end
