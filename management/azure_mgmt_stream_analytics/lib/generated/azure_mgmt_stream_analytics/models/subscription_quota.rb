# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics
  module Models
    #
    # Describes the current quota for the subscription.
    #
    class SubscriptionQuota < MsRestAzure::SubResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] The max permitted usage of this resource.
      attr_accessor :max_count

      # @return [Integer] The current usage of this resource.
      attr_accessor :current_count


      #
      # Mapper for SubscriptionQuota class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SubscriptionQuota',
          type: {
            name: 'Composite',
            class_name: 'SubscriptionQuota',
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
              max_count: {
                required: false,
                read_only: true,
                serialized_name: 'properties.maxCount',
                type: {
                  name: 'Number'
                }
              },
              current_count: {
                required: false,
                read_only: true,
                serialized_name: 'properties.currentCount',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end