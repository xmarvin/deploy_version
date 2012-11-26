$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "version/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "deploy_version"
  s.version     = Version::VERSION
  s.authors     = ["Aki"]
  s.email       = ["aki@jetthoughts.com"]
  s.homepage    = "http://jetthoughts.com"
  s.summary     = "Using revision file provided by capistrano"
  s.description = "Showing version of app"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["Rakefile", "README.rdoc"]
  s.add_dependency "rails", "~> 3.2.6"

  s.add_development_dependency "mysql2"
end
