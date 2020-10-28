# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2020_05_01
  module Models
    #
    # Specifies a configuration for PlayReady licenses.
    #
    class ContentKeyPolicyPlayReadyConfiguration < ContentKeyPolicyConfiguration

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.ContentKeyPolicyPlayReadyConfiguration"
      end

      attr_accessor :odatatype

      # @return [Array<ContentKeyPolicyPlayReadyLicense>] The PlayReady
      # licenses.
      attr_accessor :licenses

      # @return [String] The custom response data.
      attr_accessor :response_custom_data


      #
      # Mapper for ContentKeyPolicyPlayReadyConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.ContentKeyPolicyPlayReadyConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ContentKeyPolicyPlayReadyConfiguration',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              licenses: {
                client_side_validation: true,
                required: true,
                serialized_name: 'licenses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ContentKeyPolicyPlayReadyLicenseElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ContentKeyPolicyPlayReadyLicense'
                      }
                  }
                }
              },
              response_custom_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'responseCustomData',
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
