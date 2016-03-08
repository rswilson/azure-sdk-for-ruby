# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes a Virtual Machine Scale Set.
    #
    class VirtualMachineScaleSet < MsRestAzure::Resource

      include MsRestAzure

      # @return [Sku] Gets or sets the virtual machine scale set sku.
      attr_accessor :sku

      # @return [VirtualMachineScaleSetProperties]
      attr_accessor :properties

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @sku.validate unless @sku.nil?
        @properties.validate unless @properties.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.location
        output_object['location'] = serialized_property unless serialized_property.nil?

        serialized_property = object.id
        output_object['id'] = serialized_property unless serialized_property.nil?

        serialized_property = object.name
        output_object['name'] = serialized_property unless serialized_property.nil?

        serialized_property = object.type
        output_object['type'] = serialized_property unless serialized_property.nil?

        serialized_property = object.tags
        output_object['tags'] = serialized_property unless serialized_property.nil?

        serialized_property = object.sku
        unless serialized_property.nil?
          serialized_property = Sku.serialize_object(serialized_property)
        end
        output_object['sku'] = serialized_property unless serialized_property.nil?

        serialized_property = object.properties
        unless serialized_property.nil?
          serialized_property = VirtualMachineScaleSetProperties.serialize_object(serialized_property)
        end
        output_object['properties'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [VirtualMachineScaleSet] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = VirtualMachineScaleSet.new

        deserialized_property = object['location']
        output_object.location = deserialized_property

        deserialized_property = object['id']
        output_object.id = deserialized_property

        deserialized_property = object['name']
        output_object.name = deserialized_property

        deserialized_property = object['type']
        output_object.type = deserialized_property

        deserialized_property = object['tags']
        output_object.tags = deserialized_property

        deserialized_property = object['sku']
        unless deserialized_property.nil?
          deserialized_property = Sku.deserialize_object(deserialized_property)
        end
        output_object.sku = deserialized_property

        deserialized_property = object['properties']
        unless deserialized_property.nil?
          deserialized_property = VirtualMachineScaleSetProperties.deserialize_object(deserialized_property)
        end
        output_object.properties = deserialized_property

        output_object
      end
    end
  end
end
