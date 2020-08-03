require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_reader'

class NightReaderTest < Minitest::Test

  def test_it_exists
    night_reader = NightReader.new
  end
end
