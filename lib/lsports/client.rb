# frozen_string_literal: true


module LSports
  class Client < Request
    attr_accessor :username, :password, :guid
    BASE_URL = 'https://prematch.lsports.eu/OddService'
    include ::Api::Reference
    include ::Api::Prematch

    def initialize(username:, password:, guid:)
      @username = username
      @password = password
      @guid = guid
    end

    def request_url(path)
      "#{BASE_URL}/#{path}"
    end

    def query_params(query)
      { params: params.merge(query) }
    end

    def params
      { username: username, password: password, guid: guid }
    end
  end
end
