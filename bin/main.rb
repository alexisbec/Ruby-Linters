# !/usr/bin/env ruby

require_relative '../lib/linter'
require_relative '../lib/error'

files = Dir['./checks/*.rb']
files.each do |file|
  code = File.open(file)
  code.each_with_index do |line, index|
    print Linter.two_spaces(file, line, index)
    print Linter.ending_spaces(file, line, index)
    print Linter.empty_line(file, line, index)
    print Linter.before_ope1(file, line, index)
    print Linter.before_ope2(file, line, index)
    print Linter.between_ope1(file, line, index)
    print Linter.between_ope2(file, line, index)
    print Linter.after_ope(file, line, index)
    print Linter.ending_semicolon(file, line, index)
  end
end

puts error
