module MCAddon

  # List
  class List

    include MCAddon::API::Requests

    attr_accessor :api_key, :list_id, :request, :list, :timeout, :options, :email

    def initialize(*args)
      options  = args.extract_options!
      @list_id = options.delete(:list_id) { MCAddon.list_id }
      @api_key = options.delete(:api_key) { MCAddon.api_key }
      @timeout = options.delete(:timeout) { MCAddon.timeout }
      @email   = options.delete(:email) { nil }
      @options = options
      connect
    end

    def subscribe
      email.nil? &&
        raise(MCAddon::Exceptions::EmailMissingError.
              new(msg: 'missing email'))
      list.members.create(body: format_fields)
    rescue Gibbon::MailChimpError => e
      e
    end

    def members
      list.members.retrieve(options)
    end

    def self.method_whitelist
      %i[subscribe members]
    end

    private

    def connect
      missing_keys? &&
        raise(MCAddon::Exceptions::KeyMissingError.
              new(msg: 'missing api_key or list_id'))
      @request = Gibbon::Request.new(api_key: api_key, timeout: timeout)
      @list    = request.lists(list_id)
    end

    def format_fields
      {
        email_address: email,
        status: 'subscribed',
        merge_fields: options
      }
    end

    def missing_keys?
      api_key.nil? || list_id.nil?
    end

  end

end
