require 'minitest/autorun'
require 'minitest/pride'
# require './lib/night_writer'
require './lib/alpha'
require './lib/translator'

class TranslatorTest < Minitest::Test

  def test_it_exists
    translator = Translator.new

    assert_instance_of Translator, translator
  end

  def test_it_has_attributes
  end

  def test_it_can_break_message_into_lowercase_characters
    translator = Translator.new

    expected = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
    assert_equal expected, translator.create_characters("Hello World")
  end

  def test_it_can_translate_characters_to_braille
    translator = Translator.new

    expected = [[".0", "..", "00"], [".0", "0.", "00"], [".0", ".0", ".0"], [".0", ".0", ".0"], [".0", "0.", ".0"], nil, ["0.", "..", "0."], [".0", "0.", ".0"], [".0", "..", ".0"], [".0", ".0", ".0"], ["..", "0.", "00"]]
    assert_equal expected, translator.characters_to_braille("Hello World")
  end

  def test_it_can_display_top_braille
    translator = Translator.new

    assert_equal "0.", translator.top_braille("h")
  end

end
