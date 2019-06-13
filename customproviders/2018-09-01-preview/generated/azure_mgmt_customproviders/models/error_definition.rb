# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Microsoft.CustomProviders
  module Models
    #
    # Error definition.
    #
    class ErrorDefinition

      include MsRestAzure

      # @return [String] Service specific error code which serves as the
      # substatus for the HTTP error code.
      attr_accessor :code

      # @return [String] Description of the error.
      attr_accessor :message

      # @return [Array<ErrorDefinition>] Internal error details.
      attr_accessor :details


      #
      # Mapper for ErrorDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ErrorDefinition',
          type: {
            name: 'Composite',
            class_name: 'ErrorDefinition',
            model_properties: {
              code: {
                required: false,
                read_only: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                read_only: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              details: {
                required: false,
                read_only: true,
                serialized_name: 'details',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ErrorDefinitionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ErrorDefinition'
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
