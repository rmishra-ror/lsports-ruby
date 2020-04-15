# frozen_string_literal: true

require 'rest-client'
require 'json'
module LSports
  class Request
    def get(url, params: {})
    JSON.parse RestClient.get(request_url(url), query_params(params))
    rescue RestClient::Exception => e
        LSports::Error.on_complete(e)
    end
  end
end
