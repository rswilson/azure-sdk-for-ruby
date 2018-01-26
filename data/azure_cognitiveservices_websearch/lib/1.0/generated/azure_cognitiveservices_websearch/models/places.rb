# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::WebSearch::V1_0
  module Models
    #
    # Defines a local entity answer.
    #
    class Places < SearchResultsAnswer

      include MsRestAzure


      def initialize
        @_type = "Places"
      end

      attr_accessor :_type

      # @return [Array<Thing>] A list of local entities, such as restaurants or
      # hotels.
      attr_accessor :value


      #
      # Mapper for Places class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Places',
          type: {
            name: 'Composite',
            class_name: 'Places',
            model_properties: {
              _type: {
                client_side_validation: true,
                required: true,
                serialized_name: '_type',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              web_search_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'webSearchUrl',
                type: {
                  name: 'String'
                }
              },
              follow_up_queries: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'followUpQueries',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'QueryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Query'
                      }
                  }
                }
              },
              query_context: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'queryContext',
                type: {
                  name: 'Composite',
                  class_name: 'QueryContext'
                }
              },
              total_estimated_matches: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'totalEstimatedMatches',
                type: {
                  name: 'Number'
                }
              },
              is_family_friendly: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'isFamilyFriendly',
                type: {
                  name: 'Boolean'
                }
              },
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ThingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Thing'
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
