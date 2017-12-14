# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeAnalytics::Mgmt::V2015_10_01_preview
  module Models
    #
    # Data Lake Store account properties information.
    #
    class DataLakeStoreAccountInfoProperties

      include MsRestAzure

      # @return [String] the optional suffix for the Data Lake Store account.
      attr_accessor :suffix


      #
      # Mapper for DataLakeStoreAccountInfoProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataLakeStoreAccountInfoProperties',
          type: {
            name: 'Composite',
            class_name: 'DataLakeStoreAccountInfoProperties',
            model_properties: {
              suffix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'suffix',
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