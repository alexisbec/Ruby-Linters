require_relative '../lib/linter.rb'

file = Dir['../example.rb']
file.each do |file|
  code = File.open(file)
  code.each_with_index do |line, index|
    Linter.two_spaces(file, line, index)
    Linter.ending_spaces(file, line, index)
    Linter.empty_line(file, line, index)
    Linter.space_between_char(file, line, index)
  end
end