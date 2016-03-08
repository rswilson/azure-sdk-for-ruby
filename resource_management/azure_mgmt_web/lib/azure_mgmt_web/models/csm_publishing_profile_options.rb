# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Publishing options for requested profile
    #
    class CsmPublishingProfileOptions

      include MsRestAzure

      # @return [String] Name of the format. Valid values are:
      # FileZilla3
      # WebDeploy -- default
      # Ftp
      attr_accessor :format

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

        serialized_property = object.format
        output_object['format'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [CsmPublishingProfileOptions] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = CsmPublishingProfileOptions.new

        deserialized_property = object['format']
        output_object.format = deserialized_property

        output_object
      end
    end
  end
end
