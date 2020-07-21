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

    assert_equal ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"], translator.characters

  end

end
