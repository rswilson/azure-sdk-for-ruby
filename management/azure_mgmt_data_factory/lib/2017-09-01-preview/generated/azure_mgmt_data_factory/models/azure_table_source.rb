# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # A copy activity Azure Table source.
    #
    class AzureTableSource < CopySource

      include MsRestAzure


      def initialize
        @type = "AzureTableSource"
      end

      attr_accessor :type

      # @return Azure Table source query. Type: string (or Expression with
      # resultType string).
      attr_accessor :azure_table_source_query

      # @return Azure Table source ignore table not found. Type: boolean (or
      # Expression with resultType boolean).
      attr_accessor :azure_table_source_ignore_table_not_found


      #
      # Mapper for AzureTableSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureTableSource',
          type: {
            name: 'Composite',
            class_name: 'AzureTableSource',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              source_retry_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceRetryCount',
                type: {
                  name: 'Object'
                }
              },
              source_retry_wait: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceRetryWait',
                type: {
                  name: 'Object'
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
              azure_table_source_query: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureTableSourceQuery',
                type: {
                  name: 'Object'
                }
              },
              azure_table_source_ignore_table_not_found: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureTableSourceIgnoreTableNotFound',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
