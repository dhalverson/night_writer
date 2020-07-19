require './lib/alpha'

class NightWriter

input_file = ARGV[0]
output_file = ARGV[1]

# Reads from file, removes new lines
# => "Hello WorldThis project is hard"
alpha_message = (File.read(input_file)).tr("\n", "")


result = []
alpha_message.chars.each do |char|
  alpha = Alpha.new(char)
  result << alpha.translate(char)
end

p result





#   def read_and_write
#     content = File.read(ARGV[0])
#     require "pry"; binding.pry
#     File.write(ARGV[1], content)
#
#     p "Created #{ARGV[0]} containing #{File.write(ARGV[1], content)} characters"
#   end
# end
#
# NightWriter.new.read_and_write
end
