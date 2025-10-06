require 'spec_helper'
require 'rouge'
require_relative '../../lib/rouge/lexers/sapl'

RSpec.describe Rouge::Lexers::SAPL do
  let(:lexer) { Rouge::Lexers::SAPL.new }

  it 'has correct tag' do
    expect(described_class.tag).to eq('sapl')
  end

  it 'lexes a simple policy' do
    code = 'policy "test"\npermit'
    tokens = lexer.lex(code).to_a
    expect(tokens).not_to be_empty
  end
end
