module Olimpo
  class Error < StandardError
    attr_accessor :http_status, :response_body

    def initialize(http_status, response_body)
      message = " [HTTP #{http_status}] #{response_body}"
      super(message)
    end
  end

  # Any error with a 5xx HTTP status code
  class ServerError < Error; end

  # Any error with a 4xx HTTP status code
  class ClientError < Error; end
end
