# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # The exposure control request.
    #
    class ExposureControlRequest

      include MsRestAzure

      # @return [String] The feature name.
      attr_accessor :feature_name

      # @return [String] The feature type.
      attr_accessor :feature_type


      #
      # Mapper for ExposureControlRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExposureControlRequest',
          type: {
            name: 'Composite',
            class_name: 'ExposureControlRequest',
            model_properties: {
              feature_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'featureName',
                type: {
                  name: 'String'
                }
              },
              feature_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'featureType',
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
