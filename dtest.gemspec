# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','dtest','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'dtest'
  s.version = Dtest::VERSION
  s.author = 'Christian Siewert'
  s.email = 'christiansiewert@gmail.com'
  s.homepage = 'http://github.com/seveneleven'
  s.platform = Gem::Platform::RUBY
  s.summary = 'dtest generates delphi (dunit) testsuites/projects.'
# Add your other files here if you make them
  s.files = %w(
bin/dtest
lib/dtest/version.rb
lib/dtest.rb
lib/FileGenerator.rb
lib/TestSuite.rb
templates/testproject.tpl
templates/testsuite.tpl
  )
  s.require_paths << 'lib'
  s.require_paths << 'templates'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','dtest.rdoc']
  s.rdoc_options << '--title' << 'dtest' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'dtest'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.8.1')
end
