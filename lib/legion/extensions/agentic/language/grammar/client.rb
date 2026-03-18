# frozen_string_literal: true

require 'legion/extensions/agentic/language/grammar/helpers/constants'
require 'legion/extensions/agentic/language/grammar/helpers/construction'
require 'legion/extensions/agentic/language/grammar/helpers/construal'
require 'legion/extensions/agentic/language/grammar/helpers/grammar_engine'
require 'legion/extensions/agentic/language/grammar/runners/cognitive_grammar'

module Legion
  module Extensions
    module Agentic
      module Language
        module Grammar
          class Client
            include Runners::CognitiveGrammar

            def initialize(**)
              @engine = Helpers::GrammarEngine.new
            end

            private

            attr_reader :engine
          end
        end
      end
    end
  end
end
