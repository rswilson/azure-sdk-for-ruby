# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2019_06_01
  module Models
    #
    # Domain regenerate share access key request.
    #
    class DomainRegenerateKeyRequest

      include MsRestAzure

      # @return [String] Key name to regenerate key1 or key2.
      attr_accessor :key_name


      #
      # Mapper for DomainRegenerateKeyRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DomainRegenerateKeyRequest',
          type: {
            name: 'Composite',
            class_name: 'DomainRegenerateKeyRequest',
            model_properties: {
              key_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyName',
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
