# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes a virtual machine scale set storage profile.
    #
    class VirtualMachineScaleSetStorageProfile

      include MsRestAzure

      # @return [ImageReference] Gets or sets the image reference.
      attr_accessor :image_reference

      # @return [VirtualMachineScaleSetOSDisk] Gets or sets the OS disk.
      attr_accessor :os_disk

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @image_reference.validate unless @image_reference.nil?
        @os_disk.validate unless @os_disk.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.image_reference
        unless serialized_property.nil?
          serialized_property = ImageReference.serialize_object(serialized_property)
        end
        output_object['imageReference'] = serialized_property unless serialized_property.nil?

        serialized_property = object.os_disk
        unless serialized_property.nil?
          serialized_property = VirtualMachineScaleSetOSDisk.serialize_object(serialized_property)
        end
        output_object['osDisk'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [VirtualMachineScaleSetStorageProfile] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = VirtualMachineScaleSetStorageProfile.new

        deserialized_property = object['imageReference']
        unless deserialized_property.nil?
          deserialized_property = ImageReference.deserialize_object(deserialized_property)
        end
        output_object.image_reference = deserialized_property

        deserialized_property = object['osDisk']
        unless deserialized_property.nil?
          deserialized_property = VirtualMachineScaleSetOSDisk.deserialize_object(deserialized_property)
        end
        output_object.os_disk = deserialized_property

        output_object
      end
    end
  end
end
