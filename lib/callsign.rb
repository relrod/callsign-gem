#!/usr/bin/env ruby
# encoding: utf-8
# (c) 2012-present. Ricky Elrod <ricky@elrod.me>
# Released under the MIT license.
require 'rubygems'
require 'uri'
require 'net/http'
require 'json'
require 'hashie'

class InvalidCallsignException < StandardError; end
class InvalidHTTPResponseException < StandardError; end
class CallookUpdateException < StandardError; end

class Callsign
  attr_accessor :json

  def initialize(callsign)
    json_uri = URI.parse "http://callook.info/#{callsign}/json"
    json_response = Net::HTTP.new(json_uri.host, json_uri.port).get(json_uri.path)
    raise InvalidHTTPResponseException if json_response.code.to_i > 200
    @json = JSON.parse json_response.body

    # Handle invalid/update before the user can do anything that
    # would error anyway.
    case @json['status']
    when 'INVALID'
      raise InvalidCallsignException, 'Invalid callsign'
    when 'UPDATING'
      raise CallookUpdateException, 'Callook.info offline for daily update'
    end
  end

  def self.search(callsign)
    Hashie::Mash.new(Callsign.new(callsign).json)
  end
  
  # This literally passes to the JSON response that we get.
  # This means that if the server returns a string for a key, you will get that.
  # If it returns a hash with more info, so will we. Hey, this is 2.0.0 baby.
  # We're allowed to play hardball.
  def method_missing(name)
    @json[name.to_s]
  end
end
