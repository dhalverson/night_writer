require 'minitest/autorun'
require 'minitest/pride'
# require './lib/night_writer'
require './lib/alpha'
require './lib/translator'

class TranslatorTest < Minitest::Test

  # def test_it_exists
  #   translator = Translator.new
  #
  #   assert_instance_of Translator, translator
  # end
  #
  # def test_it_has_attributes
  # end
  #
  # def test_it_can_break_message_into_lowercase_characters
  #   translator = Translator.new
  #
  #   expected = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
  #   assert_equal expected, translator.create_characters("Hello World")
  # end

  def test_it_can_translate_characters_to_braille
    translator = Translator.new

    assert_equal [["0.", "00", ".."]], translator.characters_to_braille("h")
    expected = [["0.", "00", ".."], ["0.", ".0", ".."], ["0.", "0.", "0."], ["0.", "0.", "0."], ["0.", ".0", "0."], ["..", "..", ".."], [".0", "00", ".0"], ["0.", ".0", "0."], ["0.", "00", "0."], ["0.", "0.", "0."], ["00", ".0", ".."]]
    assert_equal expected, translator.characters_to_braille("Hello World")
  end

  def test_it_can_display_braille_in_rows
    translator = Translator.new

    assert_equal "0.\n00\n..", translator.format_braille("h")
    assert_equal "0.0.0.0.0.\n00.00.0..0\n....0.0.0.", translator.format_braille("hello")
    assert_equal [["0.", "0.", "0.", "0.", "0.", "..", ".0", "0.", "0.", "0.", "00"], ["00", ".0", "0.", "0.", ".0", "..", "00", ".0", "00", "0.", ".0"], ["..", "..", "0.", "0.", "0.", "..", ".0", "0.", "0.", "0.", ".."]], translator.format_braille("hello world")
  end

  # def test_it_can_display_top_braille
  #   translator = Translator.new
  #
  #   assert_equal "0.", translator.top_braille("h")
  #   assert_equal "0.0.0.0.0.", translator.top_braille("hello")
  # end
  #
  # def test_it_can_display_mid_braille
  #   translator = Translator.new
  #
  #   assert_equal "00", translator.mid_braille("h")
  #   assert_equal "00.00.0..0", translator.mid_braille("hello")
  # end
  #
  # def test_it_can_display_bottom_braille
  #   translator = Translator.new
  #
  #   assert_equal "..", translator.bottom_braille("h")
  #   assert_equal "....0.0.0.", translator.bottom_braille("hello")
  # end
  #
  # def test_it_can_display_whole_braille
  #   translator = Translator.new
  #
  #   assert_equal "0.\n00\n..", translator.whole_braille("h")
  #   assert_equal "0.0.0.0.0.\n00.00.0..0\n....0.0.0.", translator.whole_braille("hello")
  #   assert_equal "0.0.0.0.0....0\n00.00.0..0..00\n....0.0.0....0", translator.whole_braille("hello w")
  # end
  #
  # def test_it_can_translate_40_chars
  #   translator = Translator.new
  #
  #   expected = "0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.\n................................................................................\n................................................................................"
  #   assert_equal expected, translator.whole_braille("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
  # end
  #
  # def test_it_can_translate_over_40_chars_to_new_line
  #   translator = Translator.new
  #
  #   expected = "0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.\n................................................................................\n................................................................................\n0.\n.0\n00"
  #   assert_equal expected, translator.whole_braille("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaz")
  # end

end
