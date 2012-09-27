# SimpleCms
require "simple_cms/version"
require_relative 'view_paths'
require_relative 'render'
require "active_support/dependencies"
require "acts_as_versioned"

module SimpleCms
    mattr_accessor :app_root

    def self.setup
      yield.self
    end
end

require "simple_cms/engine.rb"
require "simple_cms/railtie" if defined?(Rails)
