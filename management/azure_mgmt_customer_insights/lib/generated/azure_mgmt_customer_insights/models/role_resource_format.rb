# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CustomerInsights
  module Models
    #
    # The role resource format.
    #
    class RoleResourceFormat < ProxyResource

      include MsRestAzure

      # @return [String] The role name.
      attr_accessor :role_name

      # @return [String] The description of the role.
      attr_accessor :description


      #
      # Mapper for RoleResourceFormat class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RoleResourceFormat',
          type: {
            name: 'Composite',
            class_name: 'RoleResourceFormat',
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
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              role_name: {
                required: false,
                serialized_name: 'properties.roleName',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
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