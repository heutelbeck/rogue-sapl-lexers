require 'spec_helper'
require 'rouge'
require_relative '../../lib/rouge/lexers/sapl_test'

RSpec.describe Rouge::Lexers::SAPLTest do
  let(:lexer) { Rouge::Lexers::SAPLTest.new }

  it 'has correct tag' do
    expect(described_class.tag).to eq('sapl-test')
  end

  it 'lexes a test' do
    code = 'requirement "test" { scenario "s" when subject "a" attempts "b" on "c" expect permit; }'
    tokens = lexer.lex(code).to_a
    expect(tokens).not_to be_empty
  end
end
