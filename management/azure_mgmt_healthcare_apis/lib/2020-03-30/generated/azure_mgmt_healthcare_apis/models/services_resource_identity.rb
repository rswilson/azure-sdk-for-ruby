# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::HealthcareApis::Mgmt::V2020_03_30
  module Models
    #
    # Setting indicating whether the service has a managed identity associated
    # with it.
    #
    class ServicesResourceIdentity

      include MsRestAzure

      # @return [String] The principal ID of the resource identity.
      attr_accessor :principal_id

      # @return [String] The tenant ID of the resource.
      attr_accessor :tenant_id

      # @return [ManagedServiceIdentityType] Type of identity being specified,
      # currently SystemAssigned and None are allowed. Possible values include:
      # 'SystemAssigned', 'None'
      attr_accessor :type


      #
      # Mapper for ServicesResourceIdentity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServicesResource_identity',
          type: {
            name: 'Composite',
            class_name: 'ServicesResourceIdentity',
            model_properties: {
              principal_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'principalId',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
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
