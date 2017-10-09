# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CustomerInsights
  module Models
    #
    # The relationship resource format.
    #
    class RelationshipResourceFormat < ProxyResource

      include MsRestAzure

      # @return [CardinalityTypes] The Relationship Cardinality. Possible
      # values include: 'OneToOne', 'OneToMany', 'ManyToMany'
      attr_accessor :cardinality

      # @return [Hash{String => String}] Localized display name for the
      # Relationship.
      attr_accessor :display_name

      # @return [Hash{String => String}] Localized descriptions for the
      # Relationship.
      attr_accessor :description

      # @return [DateTime] The expiry date time in UTC.
      attr_accessor :expiry_date_time_utc

      # @return [Array<PropertyDefinition>] The properties of the Relationship.
      attr_accessor :fields

      # @return [Array<RelationshipTypeMapping>] Optional property to be used
      # to map fields in profile to their strong ids in related profile.
      attr_accessor :lookup_mappings

      # @return [String] Profile type.
      attr_accessor :profile_type

      # @return [ProvisioningStates] Provisioning state. Possible values
      # include: 'Provisioning', 'Succeeded', 'Expiring', 'Deleting',
      # 'HumanIntervention', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] The Relationship name.
      attr_accessor :relationship_name

      # @return [String] Related profile being referenced.
      attr_accessor :related_profile_type

      # @return [String] The relationship guid id.
      attr_accessor :relationship_guid_id

      # @return [String] The hub name.
      attr_accessor :tenant_id


      #
      # Mapper for RelationshipResourceFormat class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RelationshipResourceFormat',
          type: {
            name: 'Composite',
            class_name: 'RelationshipResourceFormat',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              cardinality: {
                required: false,
                serialized_name: 'properties.cardinality',
                type: {
                  name: 'Enum',
                  module: 'CardinalityTypes'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              expiry_date_time_utc: {
                required: false,
                serialized_name: 'properties.expiryDateTimeUtc',
                type: {
                  name: 'DateTime'
                }
              },
              fields: {
                required: false,
                serialized_name: 'properties.fields',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PropertyDefinitionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PropertyDefinition'
                      }
                  }
                }
              },
              lookup_mappings: {
                required: false,
                serialized_name: 'properties.lookupMappings',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RelationshipTypeMappingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RelationshipTypeMapping'
                      }
                  }
                }
              },
              profile_type: {
                required: true,
                serialized_name: 'properties.profileType',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              relationship_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.relationshipName',
                type: {
                  name: 'String'
                }
              },
              related_profile_type: {
                required: true,
                serialized_name: 'properties.relatedProfileType',
                type: {
                  name: 'String'
                }
              },
              relationship_guid_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.relationshipGuidId',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.tenantId',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end