require 'minitest/autorun'
require 'minitest/pride'
require './lib/alphabetable'

class AlphabetableTest < Minitest::Test
  include Alphabetable

  def test_it_exists
    assert_instance_of Hash, braille_chars
  end
end
