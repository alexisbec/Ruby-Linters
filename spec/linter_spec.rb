require_relative '../lib/linter'

describe Linter do
  describe '.two_spaces' do
    it 'return an error if there are two spaces between elements' do
      line = 'def  method'
      expect(Linter.two_spaces('example.rb', line, 1)) == "example.rb line: 2 'Two spaces between elements'"
    end
  end

  describe '.ending_spaces' do
    it 'return an error if the line has a trailing space' do
      expect(Linter.ending_spaces('checks.rb', 'def method ',
                                  5)) == "checks.rb line 6: 'Ending blank space(s) in the line.'"
    end
  end

  describe '.empty_line' do
    it "won't return an error if there are no blank lines" do
      expect(Linter.empty_line('example.rb', 'counter = 1', 6)).to eq(nil)
    end
  end

  describe '.between_ope1' do
    it 'return an error if there is an space between operators' do
      expect(Linter.between_ope1('checks.rb', 'if counter = = 1',
                                 7)) == "checks.rb line: 8 'Space between two operators.'"
    end
  end

  describe '.after_ope' do
    it 'return an error if there is not an space after an operator' do
      line = 'if counter =1'
      file = 'example.rb'
      index = 3
      expect(Linter.after_ope(file, line, index)) == "example.rb line: 4 'Missing space after operator.'"
    end
  end

  describe '.before_ope1' do
    it 'return an error if there is not an space before an operator' do
      line = 'if counter= 1'
      file = 'example.rb'
      index = 4
      expect(Linter.after_ope(file, line, index)) == "example.rb line: 5 'Missing space before operator.'"
    end
  end

  describe '.ending_semicolon' do
    context 'there are no ending semicolons'

    it 'return an error if there is an ending semicolon' do
      expect(Linter.ending_semicolon('checks.rb', 'def method', 1)).to eq(nil)
    end
  end
end
