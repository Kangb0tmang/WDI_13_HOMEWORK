require 'pry'

class Phone
  def initialize(number)
    @number = number
  end

  def number
    @result = ''
    @number = @number.gsub(/\W/, '')
    if @number.length >= 11 && @number[0] == '1'
      @number.slice!(0)
    elsif @number.length <= 9 || @number.length >= 11
      @number = '0000000000'
    end
    @result = @number
  end

  def area_code
    @number = @number.split('')
    @number[0..2].join
  end

  def to_s
    "(#{@number[0..2]}) #{@number[3..5]}-#{@number[6..9]}"
  end
end
