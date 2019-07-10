# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # Filter and return results from input array based on the conditions.
    #
    class FilterActivity < ControlActivity

      include MsRestAzure


      def initialize
        @type = "Filter"
      end

      attr_accessor :type

      # @return [Expression] Input array on which filter should be applied.
      attr_accessor :items

      # @return [Expression] Condition to be used for filtering the input.
      attr_accessor :condition


      #
      # Mapper for FilterActivity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Filter',
          type: {
            name: 'Composite',
            class_name: 'FilterActivity',
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
              name: {
                client_side_validation: true,
                required: true,
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
              depends_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dependsOn',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActivityDependencyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ActivityDependency'
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
              items: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.items',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'Expression'
                }
              },
              condition: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.condition',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'Expression'
                }
              }
            }
          }
        }
      end
    end
  end
end
