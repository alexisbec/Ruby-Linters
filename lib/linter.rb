# rubocop: disable Style/GuardClause

require_relative 'error'
require 'colorize'

private

class Linter
  def self.two_spaces(file, line, index)
    if line.match(/\S\s{2,}\S/)
      $errors += 1
      "#{file} line: #{index + 1} 'Two spaces between elements'\n"
    end
  end

  def self.ending_spaces(file, line, index)
    if line.match(/\s{2,}$/)
      $errors += 1
      "#{file} line: #{index + 1} 'Ending blank space(s) in the line.'\n"
    end
  end

  def self.empty_line(file, line, index)
    if line.strip == ''
      $errors += 1
      "#{file} line: #{index + 1} 'Unnecesary empty line'\n"
    end
  end

  def self.before_ope1(file, line, index)
    case line
    when /\w=/
      $errors += 1
      "#{file} line: #{index + 1} 'Missing space before operator.'\n"
    when /\w\*/
      $errors += 1
      "#{file} line: #{index + 1} 'Missing space before operator.'\n"
    when /\w-/
      $errors += 1
      "#{file} line: #{index + 1} 'Missing space before operator.'\n"
    when /\w\+/
      $errors += 1
      "#{file} line: #{index + 1} 'Missing space before operator.'\n"
    when %r{\w/}
      $errors += 1
      "#{file} line: #{index + 1} 'Missing space before operator.'\n"
    end
  end

  def self.before_ope2(file, line, index)
    case line
    when /\w%/
      $errors += 1
      "#{file} line: #{index + 1} 'Missing space before operator.'\n"
    when /\w!/
      $errors += 1
      "#{file} line: #{index + 1} 'Missing space before operator.'\n"
    when /\w</
      $errors += 1
      "#{file} line: #{index + 1} 'Missing space before operator.'\n"
    when /\w>/
      $errors += 1
      "#{file} line: #{index + 1} 'Missing space before operator.'\n"
    end
  end

  def self.between_ope1(file, line, index)
    case line
    when /= =/
      $errors += 1
      "#{file} line: #{index + 1} 'Space between two operators.'\n"
    when /- =/
      $errors += 1
      "#{file} line: #{index + 1} 'Space between two operators.'\n"
    when /\+ =/
      $errors += 1
      "#{file} line: #{index + 1} 'Space between two operators.'\n"
    when /\* \*/
      $errors += 1
      "#{file} line: #{index + 1} 'Space between two operators.'\n"
    when /\* =/
      $errors += 1
      "#{file} line: #{index + 1} 'Space between two operators.'\n"
    end
  end

  def self.between_ope2(file, line, index)
    case line
    when /% =/
      $errors += 1
      "#{file} line: #{index + 1} 'Space between two operators.'\n"
    when /! =/
      $errors += 1
      "#{file} line: #{index + 1} 'Space between two operators.'\n"
    when /> =/
      $errors += 1
      "#{file} line: #{index + 1} 'Space between two operators.'\n"
    when /< =/
      $errors += 1
      "#{file} line: #{index + 1} 'Space between two operators.'\n"
    when /\*\* =/
      $errors += 1
      "#{file} line: #{index + 1} 'Space between two operators.'\n"
    when %r{/ =}
      $errors += 1
      "#{file} line: #{index + 1} 'Space between two operators.'\n"
    end
  end

  def self.after_ope(file, line, index)
    case line
    when /=\w/
      $errors += 1
      "#{file} line: #{index + 1} 'Missing space after operator.'\n"
    when /\*\w/
      $errors += 1
      "#{file} line: #{index + 1} 'Missing space after operator.'\n"
    end
  end

  def self.ending_semicolon(file, line, index)
    if line.match(/;$/)
      $errors += 1
      "#{file} line: #{index + 1} 'Unnecesary semicolon at the end of the line.'\n"
    end
  end
end

# rubocop: enable Style/GuardClause
