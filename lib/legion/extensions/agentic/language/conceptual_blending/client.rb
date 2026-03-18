# frozen_string_literal: true

require 'legion/extensions/agentic/language/conceptual_blending/helpers/constants'
require 'legion/extensions/agentic/language/conceptual_blending/helpers/mental_space'
require 'legion/extensions/agentic/language/conceptual_blending/helpers/blend'
require 'legion/extensions/agentic/language/conceptual_blending/helpers/blending_engine'
require 'legion/extensions/agentic/language/conceptual_blending/runners/conceptual_blending'

module Legion
  module Extensions
    module Agentic
      module Language
        module ConceptualBlending
          class Client
            include Runners::ConceptualBlending

            def initialize(engine: nil)
              @engine = engine || Helpers::BlendingEngine.new
            end
          end
        end
      end
    end
  end
end
