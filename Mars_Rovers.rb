class Rover
  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def read_instructions
    puts "Input your insturctions here."
    @instructions = gets.chomp.each_char do |d| # forgot putting chomp gives a lot of trouble!
      if d == "M"
        move
      else
        turn(d)
      end
    end
  end

  def turn(n)  #rotate method

    turn_list = ["N", "W", "S", "E"]
    x = turn_list.index(@direction)
    if n == "L"
      if x == 3
        @direction = "N"
      else
        @direction = turn_list[x+1]
        # puts "#{@direction}"
      end
    else
      if x == 0
        @direction = "E"
      else
        # puts "#{x}"
        @direction = turn_list[x-1]
        # puts "#{direction}"
      end
    end
  end

  def move
    if @direction == "N"
      @y += 1
    elsif @direction == "W"
      @x -= 1
    elsif @direction == "S"
      @y -= 1
    else
      @x += 1
    end
  end

end
