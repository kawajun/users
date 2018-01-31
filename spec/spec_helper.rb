# in spec/spec_helper.rb
require 'factory_bot'
require 'rspec'
require 'rack/test'

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end