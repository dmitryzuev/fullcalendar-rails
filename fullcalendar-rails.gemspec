$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "fullcalendar/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "fullcalendar-rails"
  s.version     = Fullcalendar::Rails::VERSION
  s.authors     = ["Dmitry Zuev"]
  s.email       = ["mail@dmitryzuev.com"]
  s.homepage    = "https://github.com/dmitryzuev/fullcalendar-rails"
  s.summary     = "fullcalendar.io packaged for the Rails asset pipeline"
  s.description = "Full-sized drag & drop event calendar's JavaScript and CSS packaged for the Rails 4+ asset pipeline"
  s.license     = "MIT"

  s.add_runtime_dependency 'railties', '~> 4.0', '>= 4.0.0'
  s.add_runtime_dependency 'jquery-rails', '~> 4.0', '>= 4.0.0'
  s.add_runtime_dependency 'jquery-ui-rails', '~> 4.0', '>= 4.0.0'

  s.files        = `git ls-files`.split("\n").reject { |f| f =~ /^testapp|^fullcalendar/ }
  s.executables  = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_path = 'lib'
end
