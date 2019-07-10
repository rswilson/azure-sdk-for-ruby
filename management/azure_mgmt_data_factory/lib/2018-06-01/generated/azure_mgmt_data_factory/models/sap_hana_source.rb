# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # A copy activity source for SAP HANA source.
    #
    class SapHanaSource < CopySource

      include MsRestAzure


      def initialize
        @type = "SapHanaSource"
      end

      attr_accessor :type

      # @return SAP HANA Sql query. Type: string (or Expression with resultType
      # string).
      attr_accessor :query

      # @return The packet size of data read from SAP HANA. Type: integer(or
      # Expression with resultType integer).
      attr_accessor :packet_size


      #
      # Mapper for SapHanaSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SapHanaSource',
          type: {
            name: 'Composite',
            class_name: 'SapHanaSource',
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
              query: {
                client_side_validation: true,
                required: false,
                serialized_name: 'query',
                type: {
                  name: 'Object'
                }
              },
              packet_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'packetSize',
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
