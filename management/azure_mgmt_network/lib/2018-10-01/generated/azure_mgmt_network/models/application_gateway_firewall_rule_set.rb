# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_10_01
  module Models
    #
    # A web application firewall rule set.
    #
    class ApplicationGatewayFirewallRuleSet < Resource

      include MsRestAzure

      # @return [String] The provisioning state of the web application firewall
      # rule set.
      attr_accessor :provisioning_state

      # @return [String] The type of the web application firewall rule set.
      attr_accessor :rule_set_type

      # @return [String] The version of the web application firewall rule set
      # type.
      attr_accessor :rule_set_version

      # @return [Array<ApplicationGatewayFirewallRuleGroup>] The rule groups of
      # the web application firewall rule set.
      attr_accessor :rule_groups


      #
      # Mapper for ApplicationGatewayFirewallRuleSet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayFirewallRuleSet',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayFirewallRuleSet',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              rule_set_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.ruleSetType',
                type: {
                  name: 'String'
                }
              },
              rule_set_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.ruleSetVersion',
                type: {
                  name: 'String'
                }
              },
              rule_groups: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.ruleGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayFirewallRuleGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayFirewallRuleGroup'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end