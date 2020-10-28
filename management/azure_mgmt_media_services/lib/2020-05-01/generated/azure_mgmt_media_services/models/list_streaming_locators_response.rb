# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2020_05_01
  module Models
    #
    # The Streaming Locators associated with this Asset.
    #
    class ListStreamingLocatorsResponse

      include MsRestAzure

      # @return [Array<AssetStreamingLocator>] The list of Streaming Locators.
      attr_accessor :streaming_locators


      #
      # Mapper for ListStreamingLocatorsResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ListStreamingLocatorsResponse',
          type: {
            name: 'Composite',
            class_name: 'ListStreamingLocatorsResponse',
            model_properties: {
              streaming_locators: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'streamingLocators',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AssetStreamingLocatorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AssetStreamingLocator'
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
