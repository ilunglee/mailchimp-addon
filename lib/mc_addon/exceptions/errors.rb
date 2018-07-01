module MCAddon

  module Exceptions

    # Base Error
    class BaseError < StandardError

      def initialize(msg:)
        super(msg)
      end

    end

    class KeyMissingError < BaseError; end
    class EmailMissingError < BaseError; end

  end

end
