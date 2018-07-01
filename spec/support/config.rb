require 'dotenv/load'

module MCAddon

  RSpec.configure do |config|
    config.before(:each) do
      MCAddon.setup do |s|
        s.api_key = ENV['MAILCHIMP_KEY']
        s.list_id = ENV['MAILCHIMP_LIST_ID']
      end
    end
  end

end
