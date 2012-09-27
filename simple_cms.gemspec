require File.expand_path('../lib/simple_cms/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors =  ["Slaive", "PullMonkey", "Sergio Rafael Gianazza"]
  gem.email   =  ["@","@","sgianazza@gmail.com"]
  gem.description = %q{This is a gem based on the code written by Slaive and PullMonkey}
  gem.summary     = %q{This is a gem based on the code wirtten by Slaive and PullMonkey}
  gem.homepage    = "https://github.com/gianu/simple_cms"

  gem.files  = `git ls-files`.split($\)
  gem.executables = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files  = gem.files.grep(%r{^(test|spec|features)/})
  gem.name   = "simple_cms"
  gem.require_paths = ["lib"]
  gem.version = SimpleCms::VERSION

  gem.add_dependency "paperclip"
  gem.add_dependency "responds_to_parent"
  #We are using a custom acts_as_versioned gem
  #gem.add_dependency "acts_as_versioned"
  gem.add_dependency "coderay"
end
