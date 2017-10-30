require 'pry'

class Queens
  def initialize (options = {})
    @white = options[:white] || [0, 3]
    @black = options[:black] || [7, 3]

    if @white == @black
      raise ArgumentError
    end

    @board = [
      ['O', 'O', 'O', 'O', 'O', 'O', 'O', 'O'],
      ['O', 'O', 'O', 'O', 'O', 'O', 'O', 'O'],
      ['O', 'O', 'O', 'O', 'O', 'O', 'O', 'O'],
      ['O', 'O', 'O', 'O', 'O', 'O', 'O', 'O'],
      ['O', 'O', 'O', 'O', 'O', 'O', 'O', 'O'],
      ['O', 'O', 'O', 'O', 'O', 'O', 'O', 'O'],
      ['O', 'O', 'O', 'O', 'O', 'O', 'O', 'O'],
      ['O', 'O', 'O', 'O', 'O', 'O', 'O', 'O']
    ]

    @board[@white[0]][@white[1]] = 'W'
    @board[@black[0]][@black[1]] = 'B'
  end

  def white
    @white
  end

  def black
    @black
  end

  def to_s
    rows = []
    @board.each do |row|
      elems = row.join(' ')
      rows.push(elems)
    end
    rows.join("\n")
  end
end
binding.pry
