# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '1.0/generated/azure_cognitiveservices_entitysearch/module_definition'
require 'ms_rest_azure'

module Azure::CognitiveServices::EntitySearch::V1_0
  autoload :EntitiesOperations,                                 '1.0/generated/azure_cognitiveservices_entitysearch/entities_operations.rb'
  autoload :EntitySearchClient,                                 '1.0/generated/azure_cognitiveservices_entitysearch/entity_search_client.rb'

  module Models
    autoload :ResponseBase,                                       '1.0/generated/azure_cognitiveservices_entitysearch/models/response_base.rb'
    autoload :QueryContext,                                       '1.0/generated/azure_cognitiveservices_entitysearch/models/query_context.rb'
    autoload :ContractualRulesContractualRule,                    '1.0/generated/azure_cognitiveservices_entitysearch/models/contractual_rules_contractual_rule.rb'
    autoload :EntitiesEntityPresentationInfo,                     '1.0/generated/azure_cognitiveservices_entitysearch/models/entities_entity_presentation_info.rb'
    autoload :Error,                                              '1.0/generated/azure_cognitiveservices_entitysearch/models/error.rb'
    autoload :ImageObject,                                        '1.0/generated/azure_cognitiveservices_entitysearch/models/image_object.rb'
    autoload :Response,                                           '1.0/generated/azure_cognitiveservices_entitysearch/models/response.rb'
    autoload :Thing,                                              '1.0/generated/azure_cognitiveservices_entitysearch/models/thing.rb'
    autoload :SearchResponse,                                     '1.0/generated/azure_cognitiveservices_entitysearch/models/search_response.rb'
    autoload :Answer,                                             '1.0/generated/azure_cognitiveservices_entitysearch/models/answer.rb'
    autoload :SearchResultsAnswer,                                '1.0/generated/azure_cognitiveservices_entitysearch/models/search_results_answer.rb'
    autoload :Entities,                                           '1.0/generated/azure_cognitiveservices_entitysearch/models/entities.rb'
    autoload :Places,                                             '1.0/generated/azure_cognitiveservices_entitysearch/models/places.rb'
    autoload :Identifiable,                                       '1.0/generated/azure_cognitiveservices_entitysearch/models/identifiable.rb'
    autoload :ErrorResponse,                                      '1.0/generated/azure_cognitiveservices_entitysearch/models/error_response.rb'
    autoload :PostalAddress,                                      '1.0/generated/azure_cognitiveservices_entitysearch/models/postal_address.rb'
    autoload :Place,                                              '1.0/generated/azure_cognitiveservices_entitysearch/models/place.rb'
    autoload :Organization,                                       '1.0/generated/azure_cognitiveservices_entitysearch/models/organization.rb'
    autoload :CreativeWork,                                       '1.0/generated/azure_cognitiveservices_entitysearch/models/creative_work.rb'
    autoload :Intangible,                                         '1.0/generated/azure_cognitiveservices_entitysearch/models/intangible.rb'
    autoload :ContractualRulesAttribution,                        '1.0/generated/azure_cognitiveservices_entitysearch/models/contractual_rules_attribution.rb'
    autoload :MediaObject,                                        '1.0/generated/azure_cognitiveservices_entitysearch/models/media_object.rb'
    autoload :CivicStructure,                                     '1.0/generated/azure_cognitiveservices_entitysearch/models/civic_structure.rb'
    autoload :LocalBusiness,                                      '1.0/generated/azure_cognitiveservices_entitysearch/models/local_business.rb'
    autoload :TouristAttraction,                                  '1.0/generated/azure_cognitiveservices_entitysearch/models/tourist_attraction.rb'
    autoload :Airport,                                            '1.0/generated/azure_cognitiveservices_entitysearch/models/airport.rb'
    autoload :License,                                            '1.0/generated/azure_cognitiveservices_entitysearch/models/license.rb'
    autoload :StructuredValue,                                    '1.0/generated/azure_cognitiveservices_entitysearch/models/structured_value.rb'
    autoload :EntertainmentBusiness,                              '1.0/generated/azure_cognitiveservices_entitysearch/models/entertainment_business.rb'
    autoload :MovieTheater,                                       '1.0/generated/azure_cognitiveservices_entitysearch/models/movie_theater.rb'
    autoload :ContractualRulesLicenseAttribution,                 '1.0/generated/azure_cognitiveservices_entitysearch/models/contractual_rules_license_attribution.rb'
    autoload :ContractualRulesLinkAttribution,                    '1.0/generated/azure_cognitiveservices_entitysearch/models/contractual_rules_link_attribution.rb'
    autoload :ContractualRulesMediaAttribution,                   '1.0/generated/azure_cognitiveservices_entitysearch/models/contractual_rules_media_attribution.rb'
    autoload :ContractualRulesTextAttribution,                    '1.0/generated/azure_cognitiveservices_entitysearch/models/contractual_rules_text_attribution.rb'
    autoload :FoodEstablishment,                                  '1.0/generated/azure_cognitiveservices_entitysearch/models/food_establishment.rb'
    autoload :LodgingBusiness,                                    '1.0/generated/azure_cognitiveservices_entitysearch/models/lodging_business.rb'
    autoload :Restaurant,                                         '1.0/generated/azure_cognitiveservices_entitysearch/models/restaurant.rb'
    autoload :Hotel,                                              '1.0/generated/azure_cognitiveservices_entitysearch/models/hotel.rb'
    autoload :EntityQueryScenario,                                '1.0/generated/azure_cognitiveservices_entitysearch/models/entity_query_scenario.rb'
    autoload :EntityScenario,                                     '1.0/generated/azure_cognitiveservices_entitysearch/models/entity_scenario.rb'
    autoload :EntityType,                                         '1.0/generated/azure_cognitiveservices_entitysearch/models/entity_type.rb'
    autoload :ErrorCode,                                          '1.0/generated/azure_cognitiveservices_entitysearch/models/error_code.rb'
    autoload :ErrorSubCode,                                       '1.0/generated/azure_cognitiveservices_entitysearch/models/error_sub_code.rb'
    autoload :AnswerType,                                         '1.0/generated/azure_cognitiveservices_entitysearch/models/answer_type.rb'
    autoload :ResponseFormat,                                     '1.0/generated/azure_cognitiveservices_entitysearch/models/response_format.rb'
    autoload :SafeSearch,                                         '1.0/generated/azure_cognitiveservices_entitysearch/models/safe_search.rb'
  end
end
