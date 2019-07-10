# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # A copy activity Azure SQL sink.
    #
    class AzureSqlSink < CopySink

      include MsRestAzure


      def initialize
        @type = "AzureSqlSink"
      end

      attr_accessor :type

      # @return SQL writer stored procedure name. Type: string (or Expression
      # with resultType string).
      attr_accessor :sql_writer_stored_procedure_name

      # @return SQL writer table type. Type: string (or Expression with
      # resultType string).
      attr_accessor :sql_writer_table_type

      # @return SQL pre-copy script. Type: string (or Expression with
      # resultType string).
      attr_accessor :pre_copy_script

      # @return [Hash{String => StoredProcedureParameter}] SQL stored procedure
      # parameters.
      attr_accessor :stored_procedure_parameters

      # @return The stored procedure parameter name of the table type. Type:
      # string (or Expression with resultType string).
      attr_accessor :stored_procedure_table_type_parameter_name


      #
      # Mapper for AzureSqlSink class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureSqlSink',
          type: {
            name: 'Composite',
            class_name: 'AzureSqlSink',
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
              sql_writer_stored_procedure_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sqlWriterStoredProcedureName',
                type: {
                  name: 'Object'
                }
              },
              sql_writer_table_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sqlWriterTableType',
                type: {
                  name: 'Object'
                }
              },
              pre_copy_script: {
                client_side_validation: true,
                required: false,
                serialized_name: 'preCopyScript',
                type: {
                  name: 'Object'
                }
              },
              stored_procedure_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storedProcedureParameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StoredProcedureParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StoredProcedureParameter'
                      }
                  }
                }
              },
              stored_procedure_table_type_parameter_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storedProcedureTableTypeParameterName',
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
