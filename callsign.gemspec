Gem::Specification.new do |s|
  s.name        = 'callsign'
  s.version     = '2.1.0'
  s.date        = '2012-02-26'
  s.summary     = "Look up United States Amateur (ham) Radio callsign information."
  s.description = "Provides a simple Ruby interface to the callook.info API by Joshua Dick, W1JDD."
  s.authors     = ["Ricky Elrod"]
  s.email       = 'ricky@elrod.me'
  s.files       = ["lib/callsign.rb"]
  s.homepage    = 'http://github.com/codeblock/callsign-gem'
  s.rubyforge_project = 'CallSignRb'
  s.add_dependency 'json'
end
