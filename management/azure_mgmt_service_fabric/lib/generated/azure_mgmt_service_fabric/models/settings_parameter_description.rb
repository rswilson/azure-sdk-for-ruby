# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceFabric
  module Models
    #
    # ServiceFabric settings under sections
    #
    class SettingsParameterDescription

      include MsRestAzure

      # @return [String] The name of settings property
      attr_accessor :name

      # @return [String] The value of the property
      attr_accessor :value


      #
      # Mapper for SettingsParameterDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SettingsParameterDescription',
          type: {
            name: 'Composite',
            class_name: 'SettingsParameterDescription',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: true,
                serialized_name: 'value',
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