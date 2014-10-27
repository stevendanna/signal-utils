$:.unshift(File.dirname(__FILE__) + '/lib')
Gem::Specification.new do |s|
  s.name = 'signal-utils'
  s.version = "1.0"
  s.license = "GPLv3"
  s.platform = Gem::Platform::RUBY
  s.extra_rdoc_files = ["README.md", "LICENSE" ]
  s.summary = "Small utilities for working with signals in Linux"
  s.description = s.summary
  s.author = "Steven Danna"
  s.email = "steve@getchef.com"
  s.require_path = 'lib'
  s.bindir = 'bin'
  s.executables = ["sigign", "sigstat", "sigunmask"]  
  s.files = %w(LICENSE README.md) + Dir.glob("lib/**/*")
end
