require 'pry'

class Phone
  def initialize(number)
    @number = number
  end

  def number
    result = ''
    @number = @number.split('')
    if @number.length == 9
      return '0000000000'
    end

    if @number.length == 11 && @number.first != '1'
      return '0000000000'
    end

    if @number.length == 11 && @number.first == '1'
      @number.shift
    end

    @number.each do |char|
      if char.scan(/\D/).empty?
        result = result + char
      end
    end
    result
  end

  def area_code
    result = ''
    @number = @number.split('')
    @number[0..2].join
  end

  def to_s
    "(#{@number[0..2]}) #{@number[3..5]}-#{@number[6..9]}"
  end
end
