class User::NewsController < ApplicationController
    def index
    end


    def data
      uri = URI.parse('https://newsapi.org/v2/everything?q=%E3%83%95%E3%83%BC%E3%83%89%E3%83%87%E3%83%AA%E3%83%90%E3%83%AA%E3%83%BC&from=2021-10-10&sortBy=popularity&apiKey=1ea19b6c7e42424f9d05e6bfa818d657')
      json = Net::HTTP.get(uri)
      moments = JSON.parse(json)
      @data = moments['articles'].to_json
    end
end
