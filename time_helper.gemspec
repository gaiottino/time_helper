$: << File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'time_helper'
  s.version     = '1.0.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Daniel Gaiottino']
  s.email       = ['daniel@burtcorp.com']
  s.homepage    = 'https://github.com/gaiottino/time_helper'
  s.summary     = 'Some of the functions I\'ve really liked in ActiveSupport but without relying on ActiveSupport'
  s.description = ''

  s.rubyforge_project = 'time_helper'
  
  s.add_development_dependency 'rspec'

  s.files         = `git ls-files`.split("\n")
  # s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  # s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
