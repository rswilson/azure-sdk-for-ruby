# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2020_05_01
  module Models
    #
    # Describes the basic properties for generating thumbnails from the input
    # video
    #
    class Image < Video

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.Image"
      end

      attr_accessor :odatatype

      # @return [String] The position in the input video from where to start
      # generating thumbnails. The value can be in ISO 8601 format (For
      # example, PT05S to start at 5 seconds), or a frame count (For example,
      # 10 to start at the 10th frame), or a relative value to stream duration
      # (For example, 10% to start at 10% of stream duration). Also supports a
      # macro {Best}, which tells the encoder to select the best thumbnail from
      # the first few seconds of the video and will only produce one thumbnail,
      # no matter what other settings are for Step and Range. The default value
      # is macro {Best}.
      attr_accessor :start

      # @return [String] The intervals at which thumbnails are generated. The
      # value can be in ISO 8601 format (For example, PT05S for one image every
      # 5 seconds), or a frame count (For example, 30 for one image every 30
      # frames), or a relative value to stream duration (For example, 10% for
      # one image every 10% of stream duration). Note: Step value will affect
      # the first generated thumbnail, which may not be exactly the one
      # specified at transform preset start time. This is due to the encoder,
      # which tries to select the best thumbnail between start time and Step
      # position from start time as the first output. As the default value is
      # 10%, it means if stream has long duration, the first generated
      # thumbnail might be far away from the one specified at start time. Try
      # to select reasonable value for Step if the first thumbnail is expected
      # close to start time, or set Range value at 1 if only one thumbnail is
      # needed at start time.
      attr_accessor :step

      # @return [String] The position relative to transform preset start time
      # in the input video at which to stop generating thumbnails. The value
      # can be in ISO 8601 format (For example, PT5M30S to stop at 5 minutes
      # and 30 seconds from start time), or a frame count (For example, 300 to
      # stop at the 300th frame from the frame at start time. If this value is
      # 1, it means only producing one thumbnail at start time), or a relative
      # value to the stream duration (For example, 50% to stop at half of
      # stream duration from start time). The default value is 100%, which
      # means to stop at the end of the stream.
      attr_accessor :range


      #
      # Mapper for Image class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.Image',
          type: {
            name: 'Composite',
            class_name: 'Image',
            model_properties: {
              label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'label',
                type: {
                  name: 'String'
                }
              },
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              key_frame_interval: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyFrameInterval',
                type: {
                  name: 'TimeSpan'
                }
              },
              stretch_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'stretchMode',
                type: {
                  name: 'String'
                }
              },
              sync_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'syncMode',
                type: {
                  name: 'String'
                }
              },
              start: {
                client_side_validation: true,
                required: true,
                serialized_name: 'start',
                type: {
                  name: 'String'
                }
              },
              step: {
                client_side_validation: true,
                required: false,
                serialized_name: 'step',
                type: {
                  name: 'String'
                }
              },
              range: {
                client_side_validation: true,
                required: false,
                serialized_name: 'range',
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
