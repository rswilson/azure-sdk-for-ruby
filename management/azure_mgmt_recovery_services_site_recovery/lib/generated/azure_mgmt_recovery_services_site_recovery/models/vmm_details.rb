# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # VMM fabric specific details.
    #
    class VmmDetails < FabricSpecificDetails

      include MsRestAzure


      def initialize
        @instanceType = "VMM"
      end

      attr_accessor :instanceType


      #
      # Mapper for VmmDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VMM',
          type: {
            name: 'Composite',
            class_name: 'VmmDetails',
            model_properties: {
              instanceType: {
                required: true,
                serialized_name: 'instanceType',
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