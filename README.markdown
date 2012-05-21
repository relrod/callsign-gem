Callsign Gem
============

[![Build Status](https://secure.travis-ci.org/CodeBlock/callsign-gem.png?branch=master)](http://travis-ci.org/CodeBlock/callsign-gem)

This gem accesses the [Callook.info](http://callook.info) API,
made by Joshua Dick, W1JDD.

The original version of this gem was one of my (N8SQL) first Ruby
projects. It wasn't great, and with version 2.x I hope to change that.


How to use
==========

Invalid callsigns, or attempts to use `callsign` when callook.info
is down for its daily update will result in an exception being
thrown. You should catch these if you need to handle it gracefully.

They are called `InvalidCallsignException` and `CallookUpdateException`
respectively.

    >> require 'rubygems'
    >> require 'callsign'

    >> me = Callsign.search 'n8sql'
    => #<Hashie::Mash address=#<Hashie::Mash attn="" line1="410 HERMS CT APT 14" line2="BARBERTON, OH 44203"> current=#<Hashie::Mash callsign="N8SQL" operClass="GENERAL"> location=#<Hashie::Mash gridsquare="EN90ex" latitude="40.999965" longitude="-81.589174" quality="87"> name="RICHARD B ELROD" otherInfo=#<Hashie::Mash expiryDate="10/30/2020" frn="0011477486" grantDate="10/30/2010" lastActionDate="11/17/2011" ulsUrl="http://wireless2.fcc.gov/UlsApp/UlsSearch/license.jsp?licKey=3237962"> previous=#<Hashie::Mash callsign="KB3LLM" operClass="TECHNICIAN"> status="VALID" trustee=#<Hashie::Mash callsign="" name=""> type="PERSON">

    >> me.name
    => "RICHARD B ELROD" 

    >> me.current.callsign
    => "N8SQL"

    >> invalid = Callsign.search 'ZZ2YYY'
    InvalidCallsignException: Invalid callsign


Contributing, Licensing, etc.
=============================

I gladly accept contributions to this project. I would be even more thrilled
if they included tests to go along with them. The project is released under
the MIT license. Information about the Callook API can be found at
[http://callook.info/api_reference.php](http://callook.info/api_reference.php).
