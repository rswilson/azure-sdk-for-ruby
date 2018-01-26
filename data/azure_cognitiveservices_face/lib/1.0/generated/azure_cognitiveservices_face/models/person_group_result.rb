# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # Person group object.
    #
    class PersonGroupResult

      include MsRestAzure

      # @return [String] personGroupId of the existing person groups.
      attr_accessor :person_group_id

      # @return [String] Person group's display name, maximum length is 128.
      attr_accessor :name

      # @return [String] User-provided data attached to this person group.
      # Length should not exceed 16KB.
      attr_accessor :user_data


      #
      # Mapper for PersonGroupResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PersonGroupResult',
          type: {
            name: 'Composite',
            class_name: 'PersonGroupResult',
            model_properties: {
              person_group_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'personGroupId',
                constraints: {
                  MaxLength: 64,
                  Pattern: '^[a-z0-9-_]+$'
                },
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                constraints: {
                  MaxLength: 128
                },
                type: {
                  name: 'String'
                }
              },
              user_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userData',
                constraints: {
                  MaxLength: 16384
                },
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
