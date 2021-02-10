require 'colorize'

$errors = 0

def error
    "#{$errors} ERRORS FOUND, NEED TO BE FIXED.".red
end

class Linter
    def self.two_spaces(file, line, index)
        if line.match(/\S\s{2,}\S/)
            puts "#{file} line: #{index + 1}" + (" 'Two spaces between elements'").yellow
            $errors += 1
        end
    end

    def self.ending_spaces(file, line, index)
        if line.match(/\s{2,}$/)
            puts "#{file} line: #{index + 1}" + (" 'Ending blank space(s) in the line.'").yellow
            $errors += 1
        end
    end

    def self.empty_line(file, line, index)
        if line.strip == ''
            puts "#{file} line: #{index + 1}" + (" 'Unnecesary empty line'").yellow
            $errors += 1
        end
    end

    def self.between_ope_1(file, line, index)
        if line.match(/\= \=/)
            puts "#{file} line: #{index + 1}" + (" 'Space between two operators.'").yellow
            $errors += 1
        elsif line.match(/\- \=/)
            puts "#{file} line: #{index + 1}" + (" 'Space between two operators.'").yellow
            $errors += 1
        elsif line.match(/\+ \=/)
            puts "#{file} line: #{index + 1}" + (" 'Space between two operators.'").yellow
            $errors += 1
        elsif line.match(/\* \*/)
            puts "#{file} line: #{index + 1}" + (" 'Space between two operators.'").yellow
            $errors += 1
        elsif line.match(/\* \=/)
            puts "#{file} line: #{index + 1}" + (" 'Space between two operators.'").yellow
            $errors += 1
        elsif line.match(/\/ \=/)
            puts "#{file} line: #{index + 1}" + (" 'Space between two operators.'").yellow
            $errors += 1
        end
    end

    def self.between_ope_2(file, line, index)
        if line.match(/\% \=/)
            puts "#{file} line: #{index + 1}" + (" 'Space between two operators.'").yellow
            $errors += 1
        elsif line.match(/\! \=/)
            puts "#{file} line: #{index + 1}" + (" 'Space between two operators.'").yellow
            $errors += 1
        elsif line.match(/\> \=/)
            puts "#{file} line: #{index + 1}" + (" 'Space between two operators.'").yellow
            $errors += 1
        elsif line.match(/\< \=/)
            puts "#{file} line: #{index + 1}" + (" 'Space between two operators.'").yellow
            $errors += 1
        elsif line.match(/\*\* \=/)
            puts "#{file} line: #{index + 1}" + (" 'Space between two operators.'").yellow
            $errors += 1
        end
    end

    def self.after_ope(file, line, index)
        if line.match(/\=./)
            puts "#{file} line: #{index + 1}" + (" 'Missing space after operator.'").yellow
            $errors += 1
        elsif line.match(/\*./)
            puts "#{file} line: #{index + 1}" + (" 'Missing space after operator.'").yellow
            $errors += 1
        end
    end

    def self.before_ope_1(file, line, index)
        if line.match(/.\=/)
            puts "#{file} line: #{index + 1}" + (" 'Missing space before operator.'").yellow
            $errors += 1
        elsif line.match(/.\*/)
            puts "#{file} line: #{index + 1}" + (" 'Missing space before operator.'").yellow
            $errors += 1
        elsif line.match(/.\-/)
            puts "#{file} line: #{index + 1}" + (" 'Missing space before operator.'").yellow
            $errors += 1
        elsif line.match(/.\+/)
            puts "#{file} line: #{index + 1}" + (" 'Missing space before operator.'").yellow
            $errors += 1
        elsif line.match(/.\//)
            puts "#{file} line: #{index + 1}" + (" 'Missing space before operator.'").yellow
            $errors += 1
        end
    end

    def self.before_ope_2(file, line, index)
        if line.match(/.\%/)
            puts "#{file} line: #{index + 1}" + (" 'Missing space before operator.'").yellow
            $errors += 1
        elsif line.match(/.\!/)
            puts "#{file} line: #{index + 1}" + (" 'Missing space before operator.'").yellow
            $errors += 1
        elsif line.match(/.\</)
            puts "#{file} line: #{index + 1}" + (" 'Missing space before operator.'").yellow
            $errors += 1
        elsif line.match(/.\>/)
            puts "#{file} line: #{index + 1}" + (" 'Missing space before operator.'").yellow
            $errors += 1
        end
    end

    def self.ending_semicolon(file, line, index)
        if line.match(/;$/)
            puts "#{file} line: #{index + 1}" + (" 'Unnecesary semicolon at the end of the line.'").yellow
            $errors += 1
        end
    end
end
