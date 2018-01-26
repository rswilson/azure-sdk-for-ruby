# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::TextAnalytics::V2_0
  module Models
    #
    # Model object.
    #
    #
    class KeyPhraseBatchResult

      include MsRestAzure

      # @return [Array<KeyPhraseBatchResultItem>]
      attr_accessor :documents

      # @return [Array<ErrorRecord>]
      attr_accessor :errors


      #
      # Mapper for KeyPhraseBatchResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KeyPhraseBatchResult',
          type: {
            name: 'Composite',
            class_name: 'KeyPhraseBatchResult',
            model_properties: {
              documents: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'documents',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'KeyPhraseBatchResultItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'KeyPhraseBatchResultItem'
                      }
                  }
                }
              },
              errors: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'errors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ErrorRecordElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ErrorRecord'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
