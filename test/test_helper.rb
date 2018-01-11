require_relative "../environment"

require "minitest/autorun"
require "minitest/pride"
require "byebug"

require "minitest/reporters"
Minitest::Reporters.use!

class MiniTest::Spec
  class << self
    alias context describe
  end
end
