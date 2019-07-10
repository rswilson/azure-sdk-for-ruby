# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Custom activity type.
    #
    class CustomActivity < ExecutionActivity

      include MsRestAzure


      def initialize
        @type = "Custom"
      end

      attr_accessor :type

      # @return Command for custom activity Type: string (or Expression with
      # resultType string).
      attr_accessor :command

      # @return [LinkedServiceReference] Resource linked service reference.
      attr_accessor :resource_linked_service

      # @return Folder path for resource files Type: string (or Expression with
      # resultType string).
      attr_accessor :folder_path

      # @return [CustomActivityReferenceObject] Reference objects
      attr_accessor :reference_objects

      # @return User defined property bag. There is no restriction on the keys
      # or values that can be used. The user specified custom activity has the
      # full responsibility to consume and interpret the content defined.
      attr_accessor :extended_properties

      # @return The retention time for the files submitted for custom activity.
      # Type: double (or Expression with resultType double).
      attr_accessor :retention_time_in_days


      #
      # Mapper for CustomActivity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Custom',
          type: {
            name: 'Composite',
            class_name: 'CustomActivity',
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
              linked_service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'linkedServiceName',
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policy',
                type: {
                  name: 'Composite',
                  class_name: 'ActivityPolicy'
                }
              },
              command: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.command',
                type: {
                  name: 'Object'
                }
              },
              resource_linked_service: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.resourceLinkedService',
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              folder_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.folderPath',
                type: {
                  name: 'Object'
                }
              },
              reference_objects: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.referenceObjects',
                type: {
                  name: 'Composite',
                  class_name: 'CustomActivityReferenceObject'
                }
              },
              extended_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.extendedProperties',
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
              retention_time_in_days: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.retentionTimeInDays',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
