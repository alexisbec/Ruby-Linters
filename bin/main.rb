require_relative '../lib/linter'

files = Dir['../checks/*.rb']
files.each do |file|
  code = File.open(file)
  code.each_with_index do |line, index|
    Linter.two_spaces(file, line, index)
    Linter.ending_spaces(file, line, index)
    Linter.empty_line(file, line, index)
    Linter.before_ope1(file, line, index)
    Linter.before_ope2(file, line, index)
    Linter.between_ope1(file, line, index)
    Linter.between_ope2(file, line, index)
    Linter.after_ope(file, line, index)
    Linter.ending_semicolon(file, line, index)
  end
end

puts error
