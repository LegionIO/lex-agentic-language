# frozen_string_literal: true

require 'legion/extensions/agentic/language/pragmatic_inference/helpers/constants'
require 'legion/extensions/agentic/language/pragmatic_inference/helpers/utterance'
require 'legion/extensions/agentic/language/pragmatic_inference/helpers/pragmatic_engine'
require 'legion/extensions/agentic/language/pragmatic_inference/runners/pragmatic_inference'

module Legion
  module Extensions
    module Agentic
      module Language
        module PragmaticInference
          class Client
            include Runners::PragmaticInference

            def initialize(**)
              @engine = Helpers::PragmaticEngine.new
            end

            private

            attr_reader :engine
          end
        end
      end
    end
  end
end
