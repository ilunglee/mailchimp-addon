module MCAddon

  module API

    # Requests Module
    module Requests

      def self.included(base)
        base.extend ClassMethods
      end

      # ClassMethods
      module ClassMethods

        METHOD_WHITELIST = %i[connect].freeze

        def respond_to_missing?(method_name, include_private = false)
          callable?(method_name) || super
        end

        def method_missing(method_name, *args, &block)
          callable?(method_name) ? new(*args).send(method_name, &block) : super
        end

        def callable?(method_name)
          return false if method_name == :method_whitelist
          whitelist =
            respond_to?(:method_whitelist) ? send(:method_whitelist) : METHOD_WHITELIST
          whitelist.include? method_name
        end

      end

    end

  end

end
