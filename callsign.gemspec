Gem::Specification.new do |s|
  s.name        = 'callsign'
  s.version     = '2.2.0'
  s.date        = '2012-05-21'
  s.summary     = "Look up United States Amateur (ham) Radio callsign information."
  s.description = "Provides a simple Ruby interface to the callook.info API by Joshua Dick, W1JDD."
  s.authors     = ["Ricky Elrod"]
  s.email       = 'ricky@elrod.me'
  s.files       = ["lib/callsign.rb"]
  s.homepage    = 'http://github.com/codeblock/callsign-gem'
  s.rubyforge_project = 'CallSignRb'
  s.add_dependency 'json'
  s.add_dependency 'hashie'
end
