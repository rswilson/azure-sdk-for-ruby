# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_01_01
  module Models
    #
    # Represents collection of metric definitions.
    #
    class MetricDefinitionCollection

      include MsRestAzure

      # @return [Array<MetricDefinition>] the values for the metric
      # definitions.
      attr_accessor :value


      #
      # Mapper for MetricDefinitionCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetricDefinitionCollection',
          type: {
            name: 'Composite',
            class_name: 'MetricDefinitionCollection',
            model_properties: {
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MetricDefinitionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricDefinition'
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
