# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::EntitySearch::V1_0
  module Models
    #
    # Model object.
    #
    #
    class LocalBusiness < Place

      include MsRestAzure


      def initialize
        @_type = "LocalBusiness"
      end

      attr_accessor :_type

      # @return [String] $$.
      attr_accessor :price_range

      # @return [Array<ImageObject>]
      attr_accessor :panoramas

      # @return [Boolean]
      attr_accessor :is_permanently_closed

      # @return [String]
      attr_accessor :tag_line


      #
      # Mapper for LocalBusiness class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LocalBusiness',
          type: {
            name: 'Composite',
            class_name: 'LocalBusiness',
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
              contractual_rules: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'contractualRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ContractualRulesContractualRuleElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: '_type',
                        uber_parent: 'ContractualRulesContractualRule',
                        class_name: 'ContractualRulesContractualRule'
                      }
                  }
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
              entity_presentation_info: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'entityPresentationInfo',
                type: {
                  name: 'Composite',
                  class_name: 'EntitiesEntityPresentationInfo'
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
              },
              address: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'address',
                type: {
                  name: 'Composite',
                  class_name: 'PostalAddress'
                }
              },
              telephone: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'telephone',
                type: {
                  name: 'String'
                }
              },
              price_range: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'priceRange',
                type: {
                  name: 'String'
                }
              },
              panoramas: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'panoramas',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ImageObjectElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ImageObject'
                      }
                  }
                }
              },
              is_permanently_closed: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'isPermanentlyClosed',
                type: {
                  name: 'Boolean'
                }
              },
              tag_line: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tagLine',
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
