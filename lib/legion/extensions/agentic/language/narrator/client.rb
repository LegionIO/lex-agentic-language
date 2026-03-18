# frozen_string_literal: true

require 'legion/extensions/agentic/language/narrator/helpers/constants'
require 'legion/extensions/agentic/language/narrator/helpers/prose'
require 'legion/extensions/agentic/language/narrator/helpers/journal'
require 'legion/extensions/agentic/language/narrator/helpers/synthesizer'
require 'legion/extensions/agentic/language/narrator/runners/narrator'

module Legion
  module Extensions
    module Agentic
      module Language
        module Narrator
          class Client
            include Runners::Narrator

            attr_reader :journal

            def initialize(journal: nil, **)
              @journal = journal || Helpers::Journal.new
            end
          end
        end
      end
    end
  end
end
