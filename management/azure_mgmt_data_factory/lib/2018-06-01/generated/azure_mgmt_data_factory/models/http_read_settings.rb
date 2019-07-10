# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Sftp read settings.
    #
    class HttpReadSettings < StoreReadSettings

      include MsRestAzure

      # @return The HTTP method used to call the RESTful API. The default is
      # GET. Type: string (or Expression with resultType string).
      attr_accessor :request_method

      # @return The HTTP request body to the RESTful API if requestMethod is
      # POST. Type: string (or Expression with resultType string).
      attr_accessor :request_body

      # @return The additional HTTP headers in the request to the RESTful API.
      # Type: string (or Expression with resultType string).
      attr_accessor :additional_headers

      # @return Specifies the timeout for a HTTP client to get HTTP response
      # from HTTP server.
      attr_accessor :request_timeout


      #
      # Mapper for HttpReadSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HttpReadSettings',
          type: {
            name: 'Composite',
            class_name: 'HttpReadSettings',
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
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
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
              request_method: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requestMethod',
                type: {
                  name: 'Object'
                }
              },
              request_body: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requestBody',
                type: {
                  name: 'Object'
                }
              },
              additional_headers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'additionalHeaders',
                type: {
                  name: 'Object'
                }
              },
              request_timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requestTimeout',
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
