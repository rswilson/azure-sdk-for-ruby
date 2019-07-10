# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # This activity verifies that an external resource exists.
    #
    class ValidationActivity < ControlActivity

      include MsRestAzure


      def initialize
        @type = "Validation"
      end

      attr_accessor :type

      # @return Specifies the timeout for the activity to run. If there is no
      # value specified, it takes the value of TimeSpan.FromDays(7) which is 1
      # week as default. Type: string (or Expression with resultType string),
      # pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
      attr_accessor :timeout

      # @return A delay in seconds between validation attempts. If no value is
      # specified, 10 seconds will be used as the default. Type: integer (or
      # Expression with resultType integer).
      attr_accessor :sleep

      # @return Can be used if dataset points to a file. The file must be
      # greater than or equal in size to the value specified. Type: integer (or
      # Expression with resultType integer).
      attr_accessor :minimum_size

      # @return Can be used if dataset points to a folder. If set to true, the
      # folder must have at least one file. If set to false, the folder must be
      # empty. Type: boolean (or Expression with resultType boolean).
      attr_accessor :child_items

      # @return [DatasetReference] Validation activity dataset reference.
      attr_accessor :dataset


      #
      # Mapper for ValidationActivity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Validation',
          type: {
            name: 'Composite',
            class_name: 'ValidationActivity',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              depends_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dependsOn',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActivityDependencyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ActivityDependency'
                      }
                  }
                }
              },
              user_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userProperties',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UserPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UserProperty'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.timeout',
                type: {
                  name: 'Object'
                }
              },
              sleep: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.sleep',
                type: {
                  name: 'Object'
                }
              },
              minimum_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.minimumSize',
                type: {
                  name: 'Object'
                }
              },
              child_items: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.childItems',
                type: {
                  name: 'Object'
                }
              },
              dataset: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.dataset',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'DatasetReference'
                }
              }
            }
          }
        }
      end
    end
  end
end
