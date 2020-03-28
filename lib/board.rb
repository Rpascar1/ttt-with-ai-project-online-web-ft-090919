# frozen_string_literal: true

class Board
  attr_accessor :cells

  def initialize
    reset!
  end

  def reset!
    @cells = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  def display
    puts(" #{cells[0]} | #{cells[1]} | #{cells[2]} ")
    puts('-----------')
    puts(" #{cells[3]} | #{cells[4]} | #{cells[5]} ")
    puts('-----------')
    puts(" #{cells[6]} | #{cells[7]} | #{cells[8]} ")
  end

  def position(input)
    @cells[input.to_i - 1]
  end

  def full?
    true unless @cells.any? { |cell| cell == ' ' }
  end

  def turn_count
    @cells.length - @cells.count(' ')
  end

  def taken?(input)
    position(input) == 'X' || position(input) == 'O' ? true : false
  end

  def valid_move?(input)
    taken?(input) == false && input.to_i.between?(1, 9) ? true : false
  end

  def update(input, player)
    @cells[input.to_i - 1] = player.token
  end
end
