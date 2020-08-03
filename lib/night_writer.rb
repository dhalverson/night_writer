require './lib/alpha'
require './lib/translator'

class NightWriter
  include Alpha

    input_file = ARGV[0]
    output_file = ARGV[1]

    input = File.open(input_file, 'r')
    alpha_message = input.read.strip
    input.close

    translator = Translator.new
    braille_message = translator.display_braille(alpha_message)

    writer = File.open(output_file, 'w') { |file| file.write(braille_message) }

    puts "Created #{output_file} containing #{alpha_message.chars.count} characters"
end
