# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ComputerVision::V1_0
  module Models
    #
    # Model object.
    #
    #
    class ImageUrl

      include MsRestAzure

      # @return [String]
      attr_accessor :url


      #
      # Mapper for ImageUrl class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImageUrl',
          type: {
            name: 'Composite',
            class_name: 'ImageUrl',
            model_properties: {
              url: {
                client_side_validation: true,
                required: true,
                serialized_name: 'url',
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
