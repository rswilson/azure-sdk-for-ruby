# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # A copy activity Azure Table sink.
    #
    class AzureTableSink < CopySink

      include MsRestAzure


      def initialize
        @type = "AzureTableSink"
      end

      attr_accessor :type

      # @return Azure Table default partition key value. Type: string (or
      # Expression with resultType string).
      attr_accessor :azure_table_default_partition_key_value

      # @return Azure Table partition key name. Type: string (or Expression
      # with resultType string).
      attr_accessor :azure_table_partition_key_name

      # @return Azure Table row key name. Type: string (or Expression with
      # resultType string).
      attr_accessor :azure_table_row_key_name

      # @return Azure Table insert type. Type: string (or Expression with
      # resultType string).
      attr_accessor :azure_table_insert_type


      #
      # Mapper for AzureTableSink class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureTableSink',
          type: {
            name: 'Composite',
            class_name: 'AzureTableSink',
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
              write_batch_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'writeBatchSize',
                type: {
                  name: 'Object'
                }
              },
              write_batch_timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'writeBatchTimeout',
                type: {
                  name: 'Object'
                }
              },
              sink_retry_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sinkRetryCount',
                type: {
                  name: 'Object'
                }
              },
              sink_retry_wait: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sinkRetryWait',
                type: {
                  name: 'Object'
                }
              },
              max_concurrent_connections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxConcurrentConnections',
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
              azure_table_default_partition_key_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureTableDefaultPartitionKeyValue',
                type: {
                  name: 'Object'
                }
              },
              azure_table_partition_key_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureTablePartitionKeyName',
                type: {
                  name: 'Object'
                }
              },
              azure_table_row_key_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureTableRowKeyName',
                type: {
                  name: 'Object'
                }
              },
              azure_table_insert_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureTableInsertType',
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
