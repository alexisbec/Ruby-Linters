class Linter
    def self.two_spaces(file, line, index)
        puts "#{file} line: #{index + 1} 'Two spaces between elements' " if line.match(/\S\s{2,}\S/)
    end

    def self.ending_spaces(file, line, index)
        puts "#{file} line: #{index + 1} 'Ending blank space(s) in the line.' " if line.match(/\s{2,}$/)
    end
end