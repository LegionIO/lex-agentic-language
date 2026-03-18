# frozen_string_literal: true

require 'legion/extensions/agentic/language/language/helpers/constants'
require 'legion/extensions/agentic/language/language/helpers/summarizer'
require 'legion/extensions/agentic/language/language/helpers/lexicon'
require 'legion/extensions/agentic/language/language/runners/language'

module Legion
  module Extensions
    module Agentic
      module Language
        module Language
          class Client
            include Runners::Language

            attr_reader :lexicon

            def initialize(lexicon: nil, **)
              @lexicon = lexicon || Helpers::Lexicon.new
            end
          end
        end
      end
    end
  end
end
