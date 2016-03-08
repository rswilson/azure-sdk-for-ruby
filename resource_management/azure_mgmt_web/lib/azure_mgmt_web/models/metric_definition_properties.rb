# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Model object.
    #
    class MetricDefinitionProperties

      include MsRestAzure

      # @return [String] Name of the metric
      attr_accessor :name

      # @return [String] Unit of the metric
      attr_accessor :unit

      # @return [String] Primary aggregation type
      attr_accessor :primary_aggregation_type

      # @return [Array<MetricAvailabilily>] List of time grains supported for
      # the metric together with retention period
      attr_accessor :metric_availabilities

      # @return [String] Friendly name shown in the UI
      attr_accessor :display_name

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @metric_availabilities.each{ |e| e.validate if e.respond_to?(:validate) } unless @metric_availabilities.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.name
        output_object['name'] = serialized_property unless serialized_property.nil?

        serialized_property = object.unit
        output_object['unit'] = serialized_property unless serialized_property.nil?

        serialized_property = object.primary_aggregation_type
        output_object['primaryAggregationType'] = serialized_property unless serialized_property.nil?

        serialized_property = object.metric_availabilities
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element|
            unless element.nil?
              element = MetricAvailabilily.serialize_object(element)
            end
            serializedArray.push(element)
          end
          serialized_property = serializedArray
        end
        output_object['metricAvailabilities'] = serialized_property unless serialized_property.nil?

        serialized_property = object.display_name
        output_object['displayName'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [MetricDefinitionProperties] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = MetricDefinitionProperties.new

        deserialized_property = object['name']
        output_object.name = deserialized_property

        deserialized_property = object['unit']
        output_object.unit = deserialized_property

        deserialized_property = object['primaryAggregationType']
        output_object.primary_aggregation_type = deserialized_property

        deserialized_property = object['metricAvailabilities']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element1|
            unless element1.nil?
              element1 = MetricAvailabilily.deserialize_object(element1)
            end
            deserialized_array.push(element1)
          end
          deserialized_property = deserialized_array
        end
        output_object.metric_availabilities = deserialized_property

        deserialized_property = object['displayName']
        output_object.display_name = deserialized_property

        output_object
      end
    end
  end
end
