# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes a set of certificates which are all in the same Key Vault.
    #
    class VaultSecretGroup

      include MsRestAzure

      # @return [SubResource] Gets or sets the Relative URL of the Key Vault
      # containing all of the certificates in VaultCertificates.
      attr_accessor :source_vault

      # @return [Array<VaultCertificate>] Gets or sets the list of key vault
      # references in SourceVault which contain certificates
      attr_accessor :vault_certificates

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @source_vault.validate unless @source_vault.nil?
        @vault_certificates.each{ |e| e.validate if e.respond_to?(:validate) } unless @vault_certificates.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.source_vault
        unless serialized_property.nil?
          serialized_property = MsRestAzure::SubResource.serialize_object(serialized_property)
        end
        output_object['sourceVault'] = serialized_property unless serialized_property.nil?

        serialized_property = object.vault_certificates
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element|
            unless element.nil?
              element = VaultCertificate.serialize_object(element)
            end
            serializedArray.push(element)
          end
          serialized_property = serializedArray
        end
        output_object['vaultCertificates'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [VaultSecretGroup] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = VaultSecretGroup.new

        deserialized_property = object['sourceVault']
        unless deserialized_property.nil?
          deserialized_property = MsRestAzure::SubResource.deserialize_object(deserialized_property)
        end
        output_object.source_vault = deserialized_property

        deserialized_property = object['vaultCertificates']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element1|
            unless element1.nil?
              element1 = VaultCertificate.deserialize_object(element1)
            end
            deserialized_array.push(element1)
          end
          deserialized_property = deserialized_array
        end
        output_object.vault_certificates = deserialized_property

        output_object
      end
    end
  end
end
