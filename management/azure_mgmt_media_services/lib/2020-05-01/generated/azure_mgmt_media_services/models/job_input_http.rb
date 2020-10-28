# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2020_05_01
  module Models
    #
    # Represents HTTPS job input.
    #
    class JobInputHttp < JobInputClip

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.JobInputHttp"
      end

      attr_accessor :odatatype

      # @return [String] Base URI for HTTPS job input. It will be concatenated
      # with provided file names. If no base uri is given, then the provided
      # file list is assumed to be fully qualified uris. Maximum length of 4000
      # characters.
      attr_accessor :base_uri


      #
      # Mapper for JobInputHttp class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.JobInputHttp',
          type: {
            name: 'Composite',
            class_name: 'JobInputHttp',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              files: {
                client_side_validation: true,
                required: false,
                serialized_name: 'files',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              start: {
                client_side_validation: true,
                required: false,
                serialized_name: 'start',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: '@odata.type',
                  uber_parent: 'ClipTime',
                  class_name: 'ClipTime'
                }
              },
              end_property: {
                client_side_validation: true,
                required: false,
                serialized_name: 'end',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: '@odata.type',
                  uber_parent: 'ClipTime',
                  class_name: 'ClipTime'
                }
              },
              label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'label',
                type: {
                  name: 'String'
                }
              },
              base_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'baseUri',
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
