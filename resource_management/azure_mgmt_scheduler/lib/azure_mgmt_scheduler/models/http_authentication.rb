# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Scheduler
  module Models
    #
    # Model object.
    #
    class HttpAuthentication

      include MsRestAzure

      # @return [HttpAuthenticationType] Gets or sets the http authentication
      # type. Possible values include: 'NotSpecified', 'ClientCertificate',
      # 'ActiveDirectoryOAuth', 'Basic'
      attr_accessor :type

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.type
        output_object['type'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [HttpAuthentication] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = HttpAuthentication.new

        deserialized_property = object['type']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = HttpAuthenticationType.constants.any? { |e| HttpAuthenticationType.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum HttpAuthenticationType does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.type = deserialized_property

        output_object
      end
    end
  end
end
