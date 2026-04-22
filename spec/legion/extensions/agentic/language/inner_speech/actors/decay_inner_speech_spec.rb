# frozen_string_literal: true

# Stub the base class before loading the actor so the spec can run in isolation
# without requiring the full Legion framework.
#
# The stub must support the `time` DSL accessor used by Every actors: a class-level
# setter (time 60) and an instance-level reader that delegates to the class method.
module Legion
  module Extensions
    module Actors
      class Every
        def self.time(val = :_unset)
          if val == :_unset
            @time || 1
          else
            @time = val
          end
        end

        def time
          self.class.time
        end
      end
    end
  end
end

$LOADED_FEATURES << 'legion/extensions/actors/every'

require_relative '../../../../../../../lib/legion/extensions/agentic/language/inner_speech/actors/decay_inner_speech'

RSpec.describe Legion::Extensions::Agentic::Language::InnerSpeech::Actor::DecayInnerSpeech do
  subject(:actor) { described_class.new }

  describe '#runner_class' do
    it do
      expect(actor.runner_class).to eq(
        Legion::Extensions::Agentic::Language::InnerSpeech::Runners::InnerSpeech
      )
    end
  end

  describe '#runner_function' do
    it { expect(actor.runner_function).to eq 'update_inner_speech' }
  end

  describe '#time' do
    it { expect(actor.time).to eq 60 }
  end

  describe '#run_now?' do
    it { expect(actor.run_now?).to be false }
  end

  describe '#use_runner?' do
    it { expect(actor.use_runner?).to be false }
  end

  describe '#check_subtask?' do
    it { expect(actor.check_subtask?).to be false }
  end

  describe '#generate_task?' do
    it { expect(actor.generate_task?).to be false }
  end
end
