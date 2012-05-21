# encoding: utf-8
require File.join(File.dirname(__FILE__), '..', 'lib', 'callsign')

describe Callsign do
  it "should return valid info for a USA callsign" do
    result = Callsign.search 'w1aw'
    result.name.start_with?('ARRL').should == true
  end

  it "should allow traversing the response" do
    result = Callsign.search 'n8sql'
    result.current.callsign.should eq('N8SQL') 
  end

  it "should raise an exception on invalid callsign" do
    lambda { Callsign.search('w333333w') }.should raise_error(InvalidCallsignException)
  end

  it "should raise an invalid http response exception if we get a 404 back" do
    lambda { Callsign.search('asdf_fdsa') }.should raise_error(InvalidHTTPResponseException)
  end
end
