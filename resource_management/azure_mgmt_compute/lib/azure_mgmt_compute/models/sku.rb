# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes a virtual machine scale set sku.
    #
    class Sku

      include MsRestAzure

      # @return [String] Gets or sets the sku name.
      attr_accessor :name

      # @return [String] Gets or sets the sku tier.
      attr_accessor :tier

      # @return [Integer] Gets or sets the sku capacity.
      attr_accessor :capacity

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        # Nothing to validate
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

        serialized_property = object.tier
        output_object['tier'] = serialized_property unless serialized_property.nil?

        serialized_property = object.capacity
        output_object['capacity'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [Sku] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = Sku.new

        deserialized_property = object['name']
        output_object.name = deserialized_property

        deserialized_property = object['tier']
        output_object.tier = deserialized_property

        deserialized_property = object['capacity']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.capacity = deserialized_property

        output_object
      end
    end
  end
end
