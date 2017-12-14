# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_06_01
  module Models
    #
    # Azure VM (also known as IaaS VM) workload-specific backup copy.
    #
    class IaasVMRecoveryPoint < RecoveryPoint

      include MsRestAzure


      def initialize
        @objectType = "IaasVMRecoveryPoint"
      end

      attr_accessor :objectType

      # @return [String] Type of the backup copy.
      attr_accessor :recovery_point_type

      # @return [DateTime] The date and time when the backup copy was created.
      attr_accessor :recovery_point_time

      # @return [String] Additional information associated with this backup
      # copy.
      attr_accessor :recovery_point_additional_info

      # @return [String] The storage type for the VM whose backup copy was
      # created.
      attr_accessor :source_vmstorage_type

      # @return [Boolean] Identifies whether the VM was encrypted when the
      # backup copy is created.
      attr_accessor :is_source_vmencrypted

      # @return [KeyAndSecretDetails] Required details for recovering an
      # encrypted VM. Applicable only when IsSourceVMEncrypted is true.
      attr_accessor :key_and_secret

      # @return [Boolean] Answer to the question - Is the session to recover
      # items from this backup copy still active.
      attr_accessor :is_instant_ilrsession_active


      #
      # Mapper for IaasVMRecoveryPoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IaasVMRecoveryPoint',
          type: {
            name: 'Composite',
            class_name: 'IaasVMRecoveryPoint',
            model_properties: {
              objectType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              recovery_point_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryPointType',
                type: {
                  name: 'String'
                }
              },
              recovery_point_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryPointTime',
                type: {
                  name: 'DateTime'
                }
              },
              recovery_point_additional_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryPointAdditionalInfo',
                type: {
                  name: 'String'
                }
              },
              source_vmstorage_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceVMStorageType',
                type: {
                  name: 'String'
                }
              },
              is_source_vmencrypted: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isSourceVMEncrypted',
                type: {
                  name: 'Boolean'
                }
              },
              key_and_secret: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyAndSecret',
                type: {
                  name: 'Composite',
                  class_name: 'KeyAndSecretDetails'
                }
              },
              is_instant_ilrsession_active: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isInstantILRSessionActive',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end