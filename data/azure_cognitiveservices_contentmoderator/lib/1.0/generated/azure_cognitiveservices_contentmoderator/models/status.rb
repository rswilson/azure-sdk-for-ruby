# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ContentModerator::V1_0
  module Models
    #
    # Status properties.
    #
    class Status

      include MsRestAzure

      # @return [Integer] Status code.
      attr_accessor :code

      # @return [String] Status description.
      attr_accessor :description

      # @return [String] Exception status.
      attr_accessor :exception


      #
      # Mapper for Status class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Status',
          type: {
            name: 'Composite',
            class_name: 'Status',
            model_properties: {
              code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Code',
                type: {
                  name: 'Number'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Description',
                type: {
                  name: 'String'
                }
              },
              exception: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Exception',
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
