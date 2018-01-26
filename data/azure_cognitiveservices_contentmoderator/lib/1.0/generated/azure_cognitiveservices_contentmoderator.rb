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
require '1.0/generated/azure_cognitiveservices_contentmoderator/module_definition'
require 'ms_rest_azure'

module Azure::CognitiveServices::ContentModerator::V1_0
  autoload :ImageModeration,                                    '1.0/generated/azure_cognitiveservices_contentmoderator/image_moderation.rb'
  autoload :TextModeration,                                     '1.0/generated/azure_cognitiveservices_contentmoderator/text_moderation.rb'
  autoload :ListManagementImageLists,                           '1.0/generated/azure_cognitiveservices_contentmoderator/list_management_image_lists.rb'
  autoload :ListManagementTermLists,                            '1.0/generated/azure_cognitiveservices_contentmoderator/list_management_term_lists.rb'
  autoload :ListManagementImage,                                '1.0/generated/azure_cognitiveservices_contentmoderator/list_management_image.rb'
  autoload :ListManagementTerm,                                 '1.0/generated/azure_cognitiveservices_contentmoderator/list_management_term.rb'
  autoload :Reviews,                                            '1.0/generated/azure_cognitiveservices_contentmoderator/reviews.rb'
  autoload :ContentModeratorClient,                             '1.0/generated/azure_cognitiveservices_contentmoderator/content_moderator_client.rb'

  module Models
    autoload :Image,                                              '1.0/generated/azure_cognitiveservices_contentmoderator/models/image.rb'
    autoload :ImageIds,                                           '1.0/generated/azure_cognitiveservices_contentmoderator/models/image_ids.rb'
    autoload :Tag,                                                '1.0/generated/azure_cognitiveservices_contentmoderator/models/tag.rb'
    autoload :TermsInList,                                        '1.0/generated/azure_cognitiveservices_contentmoderator/models/terms_in_list.rb'
    autoload :Frames,                                             '1.0/generated/azure_cognitiveservices_contentmoderator/models/frames.rb'
    autoload :TermsData,                                          '1.0/generated/azure_cognitiveservices_contentmoderator/models/terms_data.rb'
    autoload :Status,                                             '1.0/generated/azure_cognitiveservices_contentmoderator/models/status.rb'
    autoload :TermsPaging,                                        '1.0/generated/azure_cognitiveservices_contentmoderator/models/terms_paging.rb'
    autoload :IPA,                                                '1.0/generated/azure_cognitiveservices_contentmoderator/models/ipa.rb'
    autoload :Terms,                                              '1.0/generated/azure_cognitiveservices_contentmoderator/models/terms.rb'
    autoload :Address,                                            '1.0/generated/azure_cognitiveservices_contentmoderator/models/address.rb'
    autoload :Review,                                             '1.0/generated/azure_cognitiveservices_contentmoderator/models/review.rb'
    autoload :DetectedTerms,                                      '1.0/generated/azure_cognitiveservices_contentmoderator/models/detected_terms.rb'
    autoload :JobExecutionReportDetails,                          '1.0/generated/azure_cognitiveservices_contentmoderator/models/job_execution_report_details.rb'
    autoload :Face,                                               '1.0/generated/azure_cognitiveservices_contentmoderator/models/face.rb'
    autoload :Job,                                                '1.0/generated/azure_cognitiveservices_contentmoderator/models/job.rb'
    autoload :Candidate,                                          '1.0/generated/azure_cognitiveservices_contentmoderator/models/candidate.rb'
    autoload :JobListResult,                                      '1.0/generated/azure_cognitiveservices_contentmoderator/models/job_list_result.rb'
    autoload :Evaluate,                                           '1.0/generated/azure_cognitiveservices_contentmoderator/models/evaluate.rb'
    autoload :JobId,                                              '1.0/generated/azure_cognitiveservices_contentmoderator/models/job_id.rb'
    autoload :MatchResponse,                                      '1.0/generated/azure_cognitiveservices_contentmoderator/models/match_response.rb'
    autoload :Error,                                              '1.0/generated/azure_cognitiveservices_contentmoderator/models/error.rb'
    autoload :ImageListMetadata,                                  '1.0/generated/azure_cognitiveservices_contentmoderator/models/image_list_metadata.rb'
    autoload :APIError,                                           '1.0/generated/azure_cognitiveservices_contentmoderator/models/apierror.rb'
    autoload :TermListMetadata,                                   '1.0/generated/azure_cognitiveservices_contentmoderator/models/term_list_metadata.rb'
    autoload :TranscriptModerationBodyItemTermsItem,              '1.0/generated/azure_cognitiveservices_contentmoderator/models/transcript_moderation_body_item_terms_item.rb'
    autoload :RefreshIndexAdvancedInfoItem,                       '1.0/generated/azure_cognitiveservices_contentmoderator/models/refresh_index_advanced_info_item.rb'
    autoload :TranscriptModerationBodyItem,                       '1.0/generated/azure_cognitiveservices_contentmoderator/models/transcript_moderation_body_item.rb'
    autoload :ImageAdditionalInfoItem,                            '1.0/generated/azure_cognitiveservices_contentmoderator/models/image_additional_info_item.rb'
    autoload :CreateVideoReviewsBodyItemVideoFramesItemReviewerResultTagsItem, '1.0/generated/azure_cognitiveservices_contentmoderator/models/create_video_reviews_body_item_video_frames_item_reviewer_result_tags_item.rb'
    autoload :Frame,                                              '1.0/generated/azure_cognitiveservices_contentmoderator/models/frame.rb'
    autoload :CreateVideoReviewsBodyItemVideoFramesItemMetadataItem, '1.0/generated/azure_cognitiveservices_contentmoderator/models/create_video_reviews_body_item_video_frames_item_metadata_item.rb'
    autoload :Email,                                              '1.0/generated/azure_cognitiveservices_contentmoderator/models/email.rb'
    autoload :CreateVideoReviewsBodyItemVideoFramesItem,          '1.0/generated/azure_cognitiveservices_contentmoderator/models/create_video_reviews_body_item_video_frames_item.rb'
    autoload :PII,                                                '1.0/generated/azure_cognitiveservices_contentmoderator/models/pii.rb'
    autoload :CreateVideoReviewsBodyItemMetadataItem,             '1.0/generated/azure_cognitiveservices_contentmoderator/models/create_video_reviews_body_item_metadata_item.rb'
    autoload :FoundFaces,                                         '1.0/generated/azure_cognitiveservices_contentmoderator/models/found_faces.rb'
    autoload :CreateVideoReviewsBodyItem,                         '1.0/generated/azure_cognitiveservices_contentmoderator/models/create_video_reviews_body_item.rb'
    autoload :Match,                                              '1.0/generated/azure_cognitiveservices_contentmoderator/models/match.rb'
    autoload :BodyMetadata,                                       '1.0/generated/azure_cognitiveservices_contentmoderator/models/body_metadata.rb'
    autoload :ImageList,                                          '1.0/generated/azure_cognitiveservices_contentmoderator/models/image_list.rb'
    autoload :Body,                                               '1.0/generated/azure_cognitiveservices_contentmoderator/models/body.rb'
    autoload :RefreshIndex,                                       '1.0/generated/azure_cognitiveservices_contentmoderator/models/refresh_index.rb'
    autoload :ImageUrl,                                           '1.0/generated/azure_cognitiveservices_contentmoderator/models/image_url.rb'
    autoload :Classification,                                     '1.0/generated/azure_cognitiveservices_contentmoderator/models/classification.rb'
    autoload :VideoFrameBodyItemReviewerResultTagsItem,           '1.0/generated/azure_cognitiveservices_contentmoderator/models/video_frame_body_item_reviewer_result_tags_item.rb'
    autoload :Screen,                                             '1.0/generated/azure_cognitiveservices_contentmoderator/models/screen.rb'
    autoload :VideoFrameBodyItemMetadataItem,                     '1.0/generated/azure_cognitiveservices_contentmoderator/models/video_frame_body_item_metadata_item.rb'
    autoload :DetectedLanguage,                                   '1.0/generated/azure_cognitiveservices_contentmoderator/models/detected_language.rb'
    autoload :VideoFrameBodyItem,                                 '1.0/generated/azure_cognitiveservices_contentmoderator/models/video_frame_body_item.rb'
    autoload :KeyValuePair,                                       '1.0/generated/azure_cognitiveservices_contentmoderator/models/key_value_pair.rb'
    autoload :CreateReviewBodyItemMetadataItem,                   '1.0/generated/azure_cognitiveservices_contentmoderator/models/create_review_body_item_metadata_item.rb'
    autoload :OCR,                                                '1.0/generated/azure_cognitiveservices_contentmoderator/models/ocr.rb'
    autoload :CreateReviewBodyItem,                               '1.0/generated/azure_cognitiveservices_contentmoderator/models/create_review_body_item.rb'
    autoload :Phone,                                              '1.0/generated/azure_cognitiveservices_contentmoderator/models/phone.rb'
    autoload :Content,                                            '1.0/generated/azure_cognitiveservices_contentmoderator/models/content.rb'
    autoload :TermList,                                           '1.0/generated/azure_cognitiveservices_contentmoderator/models/term_list.rb'
    autoload :AzureRegionBaseUrl,                                 '1.0/generated/azure_cognitiveservices_contentmoderator/models/azure_region_base_url.rb'
  end
end
