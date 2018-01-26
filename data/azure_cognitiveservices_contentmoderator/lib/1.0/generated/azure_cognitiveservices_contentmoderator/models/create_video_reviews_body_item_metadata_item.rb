# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ContentModerator::V1_0
  module Models
    #
    # Model object.
    #
    #
    class CreateVideoReviewsBodyItemMetadataItem

      include MsRestAzure

      # @return [String] Your key parameter.
      attr_accessor :key

      # @return [String] Your value parameter.
      attr_accessor :value


      #
      # Mapper for CreateVideoReviewsBodyItemMetadataItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CreateVideoReviewsBodyItem_MetadataItem',
          type: {
            name: 'Composite',
            class_name: 'CreateVideoReviewsBodyItemMetadataItem',
            model_properties: {
              key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Key',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Value',
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
