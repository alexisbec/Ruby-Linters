class Linter
    def self.two_spaces(file, line, index)
        puts "#{file} line: #{index + 1} 'Two spaces between elements' " if line.match(/\S\s{2,}\S/)
    end

    def self.ending_spaces(file, line, index)
        puts "#{file} line: #{index + 1} 'Ending blank space(s) in the line.' " if line.match(/\s{2,}$/)
    end

    def self.empty_line(file, line, index)
        puts "#{file} line: #{index + 1} 'Unnecesary empty line' " if line.strip == ''
    end

    def self.space_between_char(file, line, index)
        if line.match('= =')
            puts "#{file} line: #{index + 1} 'Space between two logical elements.' "
        elsif line.match('- =')
            puts "#{file} line: #{index + 1} 'Space between two logical elements.' "
        elsif line.match('+ =')
            puts "#{file} line: #{index + 1} 'Space between two logical elements.' "
        end
    end
end
