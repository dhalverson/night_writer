require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'

class NightWriterTest < Minitest::Test

  def test_it_exists
    night_writer = NightWriter.new
  end

  # def test_it_can_return_second_input
  #   night_writer = NightWriter.new
  #
  #   assert_equal "Created 'test.txt' containing 256 characters"
  # end

end
