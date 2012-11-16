$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "version/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "version"
  s.version     = Version::VERSION
  s.authors     = ["AKI"]
  s.email       = ["aki@jetthoughts.com"]
  s.homepage    = "http://jetthoughts.com"
  s.summary     = "Change format"
  s.description = "Showing version of app"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.6"

  s.add_development_dependency "mysql2"
end
