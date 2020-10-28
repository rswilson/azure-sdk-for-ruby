# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2020_05_01
  module Models
    #
    # Filter First Quality
    #
    class FirstQuality

      include MsRestAzure

      # @return [Integer] The first quality bitrate.
      attr_accessor :bitrate


      #
      # Mapper for FirstQuality class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FirstQuality',
          type: {
            name: 'Composite',
            class_name: 'FirstQuality',
            model_properties: {
              bitrate: {
                client_side_validation: true,
                required: true,
                serialized_name: 'bitrate',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
