class Rover
  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def read_instructions
    puts "Input your insturctions here."
    @instructions = gets.each_char do |d|
      if d == "M"
        move(d)
      else
        turn(d)
      end
    end
  end

  def turn

    @turn_list = ["N", "W" "S", "E"]
    @x = turn_list[@direction]
      if @x == 3
        @direction == "N"
      else
        @direction = turn_list[@x-1]
      end
  end

  def move
    if @direction == "N"
      @y += 1
    elsif
      @direction == "W"
      @x -= 1
    elsif
      @direction == "S"
      @y -= 1
    else
      @direction == "E"
      @x =+ 1
    end
  end

end
