require 'minitest/autorun'
require 'minitest/pride'
# require './lib/night_writer'
require './lib/alpha'

class AlphaTest < Minitest::Test

  def test_it_exists
    alpha = Alpha.new("a")

    assert_instance_of Alpha, alpha
  end

  def test_it_can_translate_alpha_to_braille
    alpha = Alpha.new("a")

    assert_equal ['.0', '00', '00'], alpha.translate("a")
    assert_equal ['.0', '0.', '..'], alpha.translate("Z")
  end



end
