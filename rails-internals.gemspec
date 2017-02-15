$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails/internals/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails-internals"
  s.version     = Rails::Internals::VERSION
  s.authors     = ["Godfrey Chan", "Vaidehi Joshi"]
  s.email       = ["godfreykfc@gmail.com", "vaidehi.sj@gmail.com"]
  s.homepage    = "https://github.com/chancancode/rails-internals"
  s.summary     = "Like chrome://net-internals, but for Rails."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.1"
  s.add_dependency "get_process_mem"
end
