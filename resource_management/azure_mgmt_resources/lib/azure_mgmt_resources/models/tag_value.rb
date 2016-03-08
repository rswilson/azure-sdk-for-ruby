# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Resources
  module Models
    #
    # Tag information.
    #
    class TagValue

      include MsRestAzure

      # @return [String] Gets or sets the tag ID.
      attr_accessor :id

      # @return [String] Gets or sets the tag value.
      attr_accessor :tag_value

      # @return [TagCount] Gets or sets the tag value count.
      attr_accessor :count

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @count.validate unless @count.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.id
        output_object['id'] = serialized_property unless serialized_property.nil?

        serialized_property = object.tag_value
        output_object['tagValue'] = serialized_property unless serialized_property.nil?

        serialized_property = object.count
        unless serialized_property.nil?
          serialized_property = TagCount.serialize_object(serialized_property)
        end
        output_object['count'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [TagValue] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = TagValue.new

        deserialized_property = object['id']
        output_object.id = deserialized_property

        deserialized_property = object['tagValue']
        output_object.tag_value = deserialized_property

        deserialized_property = object['count']
        unless deserialized_property.nil?
          deserialized_property = TagCount.deserialize_object(deserialized_property)
        end
        output_object.count = deserialized_property

        output_object
      end
    end
  end
end
