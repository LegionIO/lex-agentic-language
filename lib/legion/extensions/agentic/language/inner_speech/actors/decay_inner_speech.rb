# frozen_string_literal: true

require 'legion/extensions/actors/every'

module Legion
  module Extensions
    module Agentic
      module Language
        module InnerSpeech
          module Actor
            # DecayInnerSpeech runs every 60 seconds and ticks the inner voice stream,
            # decaying the salience of all queued utterances.  Without this actor the
            # stream would grow indefinitely and old utterances would remain at full
            # salience, distorting urgency calculations.
            #
            # Delegates to Runners::InnerSpeech#update_inner_speech, which calls
            # InnerVoice#tick → SpeechStream#decay_all.
            class DecayInnerSpeech < Legion::Extensions::Actors::Every
              time 60

              def runner_class
                Legion::Extensions::Agentic::Language::InnerSpeech::Runners::InnerSpeech
              end

              def runner_function
                'update_inner_speech'
              end

              def run_now?
                false
              end

              def use_runner?
                false
              end

              def check_subtask?
                false
              end

              def generate_task?
                false
              end
            end
          end
        end
      end
    end
  end
end
