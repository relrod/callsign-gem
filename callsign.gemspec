# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{callsign}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Rick E."]
  s.date = %q{2009-07-30}
  s.description = %q{This RubyGem allows Ruby Coders to access the information contained on callook.info, an online Amateur Radio Callsign Lookup service, run by Joshua Dick, W1JDD.}
  s.email = %q{codeblock@eighthbit.net}
  s.files = ["README","callook.rb"]
  s.has_rdoc = false
  s.homepage = %q{http://github.com/codeblock/CallSignRb}
#  s.rubyforge_project = %q{CallSignRb}
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{This RubyGem allows Ruby Coders to access the information contained on callook.info, an online Amateur Radio Callsign Lookup service, run by Joshua Dick, W1JDD.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2
end
