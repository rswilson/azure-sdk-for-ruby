# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::NewsSearch::V1_0
  module Models
    #
    # Defines a thing.
    #
    class Thing < Response

      include MsRestAzure


      def initialize
        @_type = "Thing"
      end

      attr_accessor :_type

      # @return [String] The name of the thing represented by this object.
      attr_accessor :name

      # @return [String] The URL to get more information about the thing
      # represented by this object.
      attr_accessor :url

      # @return [ImageObject] An image of the item.
      attr_accessor :image

      # @return [String] A short description of the item.
      attr_accessor :description

      # @return [String] An alias for the item
      attr_accessor :alternate_name

      # @return [String] An ID that uniquely identifies this item.
      attr_accessor :bing_id


      #
      # Mapper for Thing class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Thing',
          type: {
            name: 'Composite',
            class_name: 'Thing',
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
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'url',
                type: {
                  name: 'String'
                }
              },
              image: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'image',
                type: {
                  name: 'Composite',
                  class_name: 'ImageObject'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              alternate_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'alternateName',
                type: {
                  name: 'String'
                }
              },
              bing_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'bingId',
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
