class Map < ApplicationRecord
  def initialize(toilet_param)
    @toilet_param = toilet_param
  end

  def uri
    address = URI.encode_www_form({address: @toilet_param})
    URI.parse("https://maps.googleapis.com/maps/api/geocode/json?#{address}&key=A")
    # KEY直書きpushしないこと
  end

  def result
    require 'net/http'
    http = Net::HTTP.new(uri)
    api_response = Net::HTTP.get_response(uri)
    # api_response = Net::Http.get_response(uri)
    response_body = JSON.parse(api_response.body)
    response_body["results"][0]["geometry"]["location"]
  end
end
