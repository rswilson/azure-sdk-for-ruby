# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Resources
  module Models
    #
    # Parameters of move resources.
    #
    class ResourcesMoveInfo

      include MsRestAzure

      # @return [Array<String>] Gets or sets the ids of the resources.
      attr_accessor :resources

      # @return [String] The target resource group.
      attr_accessor :target_resource_group

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @resources.each{ |e| e.validate if e.respond_to?(:validate) } unless @resources.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.resources
        output_object['resources'] = serialized_property unless serialized_property.nil?

        serialized_property = object.target_resource_group
        output_object['targetResourceGroup'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [ResourcesMoveInfo] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = ResourcesMoveInfo.new

        deserialized_property = object['resources']
        output_object.resources = deserialized_property

        deserialized_property = object['targetResourceGroup']
        output_object.target_resource_group = deserialized_property

        output_object
      end
    end
  end
end
