require 'minitest/autorun'
require 'minitest/pride'
# require './lib/night_writer'
require './lib/alpha'
require './lib/translator'

class TranslatorTest < Minitest::Test

  def test_it_exists
    translator = Translator.new("Hello World")

    assert_instance_of Translator, translator
  end

  def test_it_has_attributes
    translator = Translator.new("Hello World")

    assert_equal "Hello World", translator.message
  end

  def test_it_can_break_message_into_lowercase_characters
    translator = Translator.new("Hello World")

    expected = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
    assert_equal expected, translator.create_characters("Hello World")
  end

  def test_it_can_translate_characters_to_braille
    translator = Translator.new("Hello World")

    expected = [[".0", "..", "00"], [".0", "0.", "00"], [".0", ".0", ".0"], [".0", ".0", ".0"], [".0", "0.", ".0"], nil, ["0.", "..", "0."], [".0", "0.", ".0"], [".0", "..", ".0"], [".0", ".0", ".0"]]
    assert_equal expected, translator.alpha_to_braille("Hello World")

  end

end
