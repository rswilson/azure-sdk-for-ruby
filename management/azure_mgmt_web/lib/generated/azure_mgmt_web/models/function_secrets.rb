# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Function secrets.
    #
    class FunctionSecrets < ProxyOnlyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Secret key.
      attr_accessor :key

      # @return [String] Trigger URL.
      attr_accessor :trigger_url


      #
      # Mapper for FunctionSecrets class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FunctionSecrets',
          type: {
            name: 'Composite',
            class_name: 'FunctionSecrets',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              key: {
                required: false,
                serialized_name: 'properties.key',
                type: {
                  name: 'String'
                }
              },
              trigger_url: {
                required: false,
                serialized_name: 'properties.triggerUrl',
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