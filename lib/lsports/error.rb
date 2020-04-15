# frozen_string_literal: true

module LSports
  class Error < ::StandardError
    class << self
      def errors
        @errors ||= {
          400 => LSports::Error::BadRequest,
          404 => LSports::Error::NotFound
        }
      end

      def on_complete(response)
        klass = errors[response.http_code&.to_i] || LSports::Error::Unknown
        request = response.response&.request.inspect
        raise klass.new({ code: response.http_code, body: response.http_body,
                          request: request })
      end
    end

    # Raised when LSports returns a 4xx HTTP status code
    ClientError = Class.new(self)

    # Raised when LSports returns the HTTP status code 400
    BadRequest = Class.new(ClientError)

    # Raised when LSports returns the HTTP status code 404
    NotFound = Class.new(ClientError)

    # Raised when LSports returns unknown status code
    Unknown = Class.new(self)
  end
end
