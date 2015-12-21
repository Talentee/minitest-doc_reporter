require_relative 'documenter'

module Minitest
  include Minitest::Documenter

  def self.plugin_documenter_options(opts, options)
  end

  def self.plugin_documenter_init(options)
    self.reporter.reporters.reject! { |reporter| reporter.is_a? ProgressReporter }
    self.reporter << Documenter::Documenter.new(options)
  end
end
