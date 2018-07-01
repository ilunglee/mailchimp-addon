# Require Dependencies
require 'gibbon'

# Require Extensions
require 'extensions/array'

# Require Version
require 'mc_addon/version'

# Require Exceptions
require 'mc_addon/exceptions/errors'

# Require API
require 'mc_addon/api/requests'

# Require Features
require 'mc_addon/list'

# Base
module MCAddon

  @log_level = nil
  @logger    = nil
  @timeout   = 1200

  class << self

    attr_accessor :api_key, :list_id, :timeout

    # Extend array class
    class ::Array; include MCAddon::Array; end

  end

  def self.setup
    yield self
  end

end
