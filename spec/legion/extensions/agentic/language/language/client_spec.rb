# frozen_string_literal: true

RSpec.describe Legion::Extensions::Agentic::Language::Language::Client do
  describe '#initialize' do
    it 'creates a default lexicon' do
      client = described_class.new
      expect(client.lexicon).to be_a(Legion::Extensions::Agentic::Language::Language::Helpers::Lexicon)
    end

    it 'accepts an injected lexicon' do
      lexicon = Legion::Extensions::Agentic::Language::Language::Helpers::Lexicon.new
      client = described_class.new(lexicon: lexicon)
      expect(client.lexicon).to equal(lexicon)
    end
  end

  it 'includes Runners::Language' do
    expect(described_class.ancestors).to include(Legion::Extensions::Agentic::Language::Language::Runners::Language)
  end
end
