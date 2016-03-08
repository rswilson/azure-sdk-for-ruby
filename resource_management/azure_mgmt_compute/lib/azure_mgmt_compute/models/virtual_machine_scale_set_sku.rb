# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes an available virtual machine scale set sku.
    #
    class VirtualMachineScaleSetSku

      include MsRestAzure

      # @return [String] Gets the type of resource the sku applies to.
      attr_accessor :resource_type

      # @return [Sku] Gets the Sku.
      attr_accessor :sku

      # @return [VirtualMachineScaleSetSkuCapacity] Gets available scaling
      # information.
      attr_accessor :capacity

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @sku.validate unless @sku.nil?
        @capacity.validate unless @capacity.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.resource_type
        output_object['resourceType'] = serialized_property unless serialized_property.nil?

        serialized_property = object.sku
        unless serialized_property.nil?
          serialized_property = Sku.serialize_object(serialized_property)
        end
        output_object['sku'] = serialized_property unless serialized_property.nil?

        serialized_property = object.capacity
        unless serialized_property.nil?
          serialized_property = VirtualMachineScaleSetSkuCapacity.serialize_object(serialized_property)
        end
        output_object['capacity'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [VirtualMachineScaleSetSku] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = VirtualMachineScaleSetSku.new

        deserialized_property = object['resourceType']
        output_object.resource_type = deserialized_property

        deserialized_property = object['sku']
        unless deserialized_property.nil?
          deserialized_property = Sku.deserialize_object(deserialized_property)
        end
        output_object.sku = deserialized_property

        deserialized_property = object['capacity']
        unless deserialized_property.nil?
          deserialized_property = VirtualMachineScaleSetSkuCapacity.deserialize_object(deserialized_property)
        end
        output_object.capacity = deserialized_property

        output_object
      end
    end
  end
end
