$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'mc_addon/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'mc_addon'
  s.version     = MCAddon::VERSION
  s.authors     = ['Nelson Lee']
  s.email       = ['ilung.me@gmail.com']
  s.homepage    = 'http://ilung.me.com'
  s.summary     = 'Subscribe to mailchimp list'
  s.description = 'Allow simple subscribing to mailchimp list'
  s.license     = 'MIT'
  s.files       = Dir['{lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_development_dependency 'awesome_print', '~> 1.6'
  s.add_development_dependency 'bundler', '~> 1.10'
  s.add_development_dependency 'byebug'
  s.add_development_dependency 'dotenv'
  s.add_development_dependency 'rspec', '~> 3.3'
  s.add_development_dependency 'vcr'
  s.add_development_dependency 'webmock', '~> 3.4'

  s.add_dependency 'gibbon', '~> 3.2'
end
