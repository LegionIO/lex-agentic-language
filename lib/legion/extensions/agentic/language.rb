# frozen_string_literal: true

require_relative 'language/version'
require_relative 'language/grammar'
require_relative 'language/conceptual_blending'
require_relative 'language/conceptual_metaphor'
require_relative 'language/language'
require_relative 'language/inner_speech'
require_relative 'language/narrator'
require_relative 'language/narrative_reasoning'
require_relative 'language/frame_semantics'
require_relative 'language/pragmatic_inference'

module Legion
  module Extensions
    module Agentic
      module Language
        extend Legion::Extensions::Core if Legion::Extensions.const_defined? :Core, false

        def self.remote_invocable?
          false
        end

        def self.mcp_tools?
          false
        end

        def self.mcp_tools_deferred?
          false
        end

        def self.transport_required?
          false
        end

        # Sub-modules are required here as extensions are consolidated.
      end
    end
  end
end
