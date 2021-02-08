require_relative '../lib/linter.rb'

file = Dir['../example.rb']
file.each do |file|
  script = File.open(file)
  script.each_with_index do |line, index|
    Linter.two_spaces(file, line, index)
    Linter.ending_spaces(file, line, index)
    Linter.two_lines(file, line, index)
  end
end