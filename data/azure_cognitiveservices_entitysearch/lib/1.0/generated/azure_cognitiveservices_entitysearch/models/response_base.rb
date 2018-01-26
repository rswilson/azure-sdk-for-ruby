# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::EntitySearch::V1_0
  module Models
    #
    # Model object.
    #
    #
    class ResponseBase

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["ImageObject"] = "ImageObject"
      @@discriminatorMap["Thing"] = "Thing"
      @@discriminatorMap["Entities"] = "Entities"
      @@discriminatorMap["Places"] = "Places"
      @@discriminatorMap["SearchResponse"] = "SearchResponse"
      @@discriminatorMap["Response"] = "Response"
      @@discriminatorMap["SearchResultsAnswer"] = "SearchResultsAnswer"
      @@discriminatorMap["Identifiable"] = "Identifiable"
      @@discriminatorMap["Answer"] = "Answer"
      @@discriminatorMap["ErrorResponse"] = "ErrorResponse"
      @@discriminatorMap["PostalAddress"] = "PostalAddress"
      @@discriminatorMap["Place"] = "Place"
      @@discriminatorMap["Organization"] = "Organization"
      @@discriminatorMap["CreativeWork"] = "CreativeWork"
      @@discriminatorMap["Intangible"] = "Intangible"
      @@discriminatorMap["MovieTheater"] = "MovieTheater"
      @@discriminatorMap["MediaObject"] = "MediaObject"
      @@discriminatorMap["CivicStructure"] = "CivicStructure"
      @@discriminatorMap["LocalBusiness"] = "LocalBusiness"
      @@discriminatorMap["TouristAttraction"] = "TouristAttraction"
      @@discriminatorMap["Airport"] = "Airport"
      @@discriminatorMap["License"] = "License"
      @@discriminatorMap["StructuredValue"] = "StructuredValue"
      @@discriminatorMap["EntertainmentBusiness"] = "EntertainmentBusiness"
      @@discriminatorMap["FoodEstablishment"] = "FoodEstablishment"
      @@discriminatorMap["LodgingBusiness"] = "LodgingBusiness"
      @@discriminatorMap["Restaurant"] = "Restaurant"
      @@discriminatorMap["Hotel"] = "Hotel"

      def initialize
        @_type = "ResponseBase"
      end

      attr_accessor :_type


      #
      # Mapper for ResponseBase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResponseBase',
          type: {
            name: 'Composite',
            polymorphic_discriminator: '_type',
            uber_parent: 'ResponseBase',
            class_name: 'ResponseBase',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
