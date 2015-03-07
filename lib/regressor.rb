module Regressor
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration) if block_given?
  end

  class Configuration
    attr_accessor :regression_path, :excluded_models, :include_enums

    def initialize
      @regression_path = 'spec/models/regression'
      @excluded_models = []
      @include_enums = true
    end
  end
end
