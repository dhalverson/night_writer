require './lib/alpha'

class NightWriter

input_file = ARGV[0]
output_file = ARGV[1]

# Reads from file, removes new lines
# => "Hello WorldThis project is hard"
alpha_message = (File.read(input_file)).tr("\n", "")



puts "Created #{ARGV[0]} containing #{File.write(ARGV[1], alpha_message)} characters"

print result





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
