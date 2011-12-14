Callsign Gem
============

This gem accesses the [Callook.info](http://callook.info) API,
made by Joshua Dick, W1JDD.

The original version of this gem was one of my (N8SQL) first Ruby
projects. It wasn't great, and with version 2.x I hope to change that.


How to use
==========

Invalid callsigns, or attempts to use `callsign` when callook.info
is down for its daily update will result in an exception being
thrown. You should catch this if you need to handle it gracefully.

    >> require 'rubygems'
    >> require 'callsign'

    >> me = Callsign.new 'n8sql'
    => #<Callsign:0x7fdbc72930d8 @json={"address"=>{"line1"=>"410 HERMS CT APT 14", "line2"=>"BARBERTON, OH 44203", "attn"=>""}, "name"=>"RICHARD B ELROD", "otherInfo"=>{"ulsUrl"=>"http://wireless2.fcc.gov/UlsApp/UlsSearch/license.jsp?licKey=3237962", "grantDate"=>"10/30/2010", "frn"=>"0011477486", "expiryDate"=>"10/30/2020", "lastActionDate"=>"11/17/2011"}, "location"=>{"latitude"=>"40.999965", "gridsquare"=>"EN90ex", "longitude"=>"-81.589174"}, "previous"=>{"operClass"=>"TECHNICIAN", "callsign"=>"KB3LLM"}, "trustee"=>{"name"=>"", "callsign"=>""}, "current"=>{"operClass"=>"GENERAL", "callsign"=>"N8SQL"}, "type"=>"PERSON", "status"=>"VALID"}> 

    >> me.name
    => "RICHARD B ELROD" 

    >> invalid = Callsign.new 'ZZ2YYY'
    RuntimeError: Invalid callsign

