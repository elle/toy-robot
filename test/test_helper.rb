require "minitest/autorun"
require "minitest/pride"

require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

Dir[File.expand_path("./lib/**/*.rb")].each { |f| require f }

class MiniTest::Spec
  class << self
    alias context describe
  end
end
