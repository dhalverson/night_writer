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

  def test_it_can_format_braille_in_groups_by_row
    translator = Translator.new

    assert_equal [["0."], ["00"], [".."]], translator.format_braille("h")
    expected = [["0.", "0.", "0.", "0.", "0."], ["00", ".0", "0.", "0.", ".0"], ["..", "..", "0.", "0.", "0."]]
    assert_equal expected, translator.format_braille("hello")
    expected = [["0.", "0.", "0.", "0.", "0.", "..", ".0", "0.", "0.", "0.", "00"], ["00", ".0", "0.", "0.", ".0", "..", "00", ".0", "00", "0.", ".0"], ["..", "..", "0.", "0.", "0.", "..", ".0", "0.", "0.", "0.", ".."]]
    assert_equal expected, translator.format_braille("hello world")
  end

  def test_it_can_display_top_braille_row
    translator = Translator.new

    assert_equal ["0."], translator.format_braille("h").first
    assert_equal ["0.", "0.", "0.", "0.", "0."], translator.format_braille("hello").first
  end

  def test_it_can_display_middle_braille_row
    translator = Translator.new

    assert_equal ["00"], translator.format_braille("h")[1]
    assert_equal ["00", ".0", "0.", "0.", ".0"], translator.format_braille("hello")[1]
  end

  def test_it_can_display_bottom_braille_row
    translator = Translator.new

    assert_equal [".."], translator.format_braille("h").last
    assert_equal ["..", "..", "0.", "0.", "0."], translator.format_braille("hello").last
  end

  def test_it_can_return_message_length
    translator = Translator.new

    assert_equal 1, translator.message_length("h")
    assert_equal 5, translator.message_length("hello")
    assert_equal 7, translator.message_length("hello w")
  end

  def test_it_can_display_whole_braille_rows
    translator = Translator.new

    assert_equal "0.\n00\n..", translator.display_braille("h")
    assert_equal "0.0.0.0.0.\n00.00.0..0\n....0.0.0.", translator.display_braille("hello")
    assert_equal "0.0.0.0.0....0\n00.00.0..0..00\n....0.0.0....0", translator.display_braille("hello w")
  end
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
