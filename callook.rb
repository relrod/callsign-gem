#!/usr/local/bin/ruby
require 'rexml/document'
require 'open-uri'
class CallSign
	def initialize(callsign)
		@callinfo = REXML::Document.new(open("http://callook.info/index.php?callsign=#{callsign}&display=xml"))
	end

	def address(sep = "\n")
		@callinfo.elements.each("callook/address") do |ele|
			return ele.elements['line1'].text + sep + ele.elements['line2'].text
		end
	end
	
	def name
		@callinfo.elements.each("callook") do |ele|
			return ele.elements['name'].text
		end
	end
	
	def callsign
		@callinfo.elements.each("callook/current") do |ele|
			return ele.elements['callsign'].text
		end
	end

	def previouscallsign
		@callinfo.elements.each("callook/previous") do |ele|
			return ele.elements['callsign'].text
		end
	end

	def trusteecallsign
		@callinfo.elements.each("callook/trustee") do |ele|
			return ele.elements['callsign'].text
		end
	end

	def trusteename
		@callinfo.elements.each("callook/trustee") do |ele|
			return ele.elements['name'].text
		end
	end

	def class
		@callinfo.elements.each("callook/current") do |ele|
			return ele.elements['class'].text
		end		
	end

	def previousclass
		@callinfo.elements.each("callook/previous") do |ele|
			return ele.elements['class'].text
		end
	end

	def latitude
		@callinfo.elements.each("callook/location") do |ele|
			return ele.elements['latitude'].text
		end
	end

	def longitude
		@callinfo.elements.each("callook/location") do |ele|
			return ele.elements['logitude'].text
		end
	end

	def gridsquare
		@callinfo.elements.each("callook/location") do |ele|
			return ele.elements['gridsquare'].text
		end
	end

	def grantdate
		@callinfo.elements.each("callook/otherinfo") do |ele|
			return ele.elements['grantdate'].text
		end
	end

	def expirydate
		@callinfo.elements.each("callook/otherinfo") do |ele|
			return ele.elements['expirydate'].text
		end
	end

	def lastaction
		@callinfo.elements.each("callook/otherinfo") do |ele|
			return ele.elements['lastactiondate'].text
		end
	end

	def frn
		@callinfo.elements.each("callook/otherinfo") do |ele|
			return ele.elements['frn'].text
		end
	end
end

p = CallSign.new("w3ok")
puts p.trusteename
