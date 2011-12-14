# encoding: utf-8
require File.join(File.dirname(__FILE__), '..', 'lib', 'callsign')

describe Callsign do
  it "should return valid info for a USA callsign" do
    result = Callsign.new 'w1aw'
    result.name.start_with?('ARRL').should == true
  end

  it "should raise an exception on invalid callsign" do
    lambda { Callsign.new('w333333w') }.should raise_error(InvalidCallsignException)
  end
end
