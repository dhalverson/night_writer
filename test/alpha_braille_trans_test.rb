require 'minitest/autorun'
require 'minitest/pride'
require './lib/alpha'
require './lib/alpha_braille_trans'

class AlphaBrailleTransTest < Minitest::Test

  def test_it_exists
    alpha_braille_trans = AlphaBrailleTrans.new

    assert_instance_of AlphaBrailleTrans, alpha_braille_trans
  end



end
