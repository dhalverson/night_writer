require './lib/alpha'
require './lib/translator'

class NightReader
  include Alpha

    input_file = ARGV[1]
    output_file = ARGV[0]

    input = File.open(input_file, 'r')
    braille_message = input.read.strip
    input.close

    translator = Translator.new
    alpha_message = translator.display_english(braille_message)

    writer = File.open(output_file, 'w') { |file| file.write(alpha_message) }

    puts "Created #{output_file} containing #{alpha_message.chars.count} characters"
end
