require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'
require './lib/alpha'

class AlphaTest < Minitest::Test

  def test_it_exists
    alpha = Alpha.new

    assert_instance_of Alpha, alpha
  end



end
