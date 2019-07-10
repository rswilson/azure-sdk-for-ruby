# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Ssis environment.
    #
    class SsisEnvironment < SsisObjectMetadata

      include MsRestAzure


      def initialize
        @type = "Environment"
      end

      attr_accessor :type

      # @return [Integer] Folder id which contains environment.
      attr_accessor :folder_id

      # @return [Array<SsisVariable>] Variable in environment
      attr_accessor :variables


      #
      # Mapper for SsisEnvironment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Environment',
          type: {
            name: 'Composite',
            class_name: 'SsisEnvironment',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'Number'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              folder_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'folderId',
                type: {
                  name: 'Number'
                }
              },
              variables: {
                client_side_validation: true,
                required: false,
                serialized_name: 'variables',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SsisVariableElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SsisVariable'
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
