# frozen_string_literal: true

RSpec.describe Legion::Extensions::Agentic::Language::Grammar do
  it 'has a version' do
    expect(Legion::Extensions::Agentic::Language::Grammar::VERSION).to eq('0.1.0')
  end

  it 'defines CONSTRUAL_OPERATIONS' do
    expect(Legion::Extensions::Agentic::Language::Grammar::Helpers::Constants::CONSTRUAL_OPERATIONS).to be_frozen
    expect(Legion::Extensions::Agentic::Language::Grammar::Helpers::Constants::CONSTRUAL_OPERATIONS).to include(:perspective, :prominence, :specificity, :scope,
                                                                                                                :dynamicity)
  end

  it 'defines EXPRESSION_TYPES' do
    expect(Legion::Extensions::Agentic::Language::Grammar::Helpers::Constants::EXPRESSION_TYPES).to include(:nominal,
                                                                                                            :relational, :clausal)
  end
end
