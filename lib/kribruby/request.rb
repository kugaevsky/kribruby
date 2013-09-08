require 'net/http'
require 'open-uri'
require 'json'

module Kribruby
  class Request

    attr_accessor :base, :path, :date, :uri

    def initialize(date = Date.today)
      @base       = 'http://api.kribrum.ru'
      @path       = 'objects_report'
      @secret     = Kribruby::Config[:secret]
      @object_id  = Kribruby::Config[:object_id]
      @date       = Date.parse(date).strftime(Kribruby::Config[:date_format])
      @uri        = URI.parse [@base, @path, @secret, @object_id, @date].join('/')
    end

    # Get data from Kribrum API
    #
    # @return [Hash] response hash with Kribrum response
    def get
      response = Net::HTTP.get(uri)
      JSON.parse response
    end
  end
end


