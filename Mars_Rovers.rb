class Rover
  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def read_instructions
    puts "Input the size of the plateau on x axis"
    x_max = gets.chomp.to_i
    puts "Input the size of the plateau on y axis"
    y_max = gets.chomp.to_i
    # The @x, @y should not be larger than the plateau size
    puts "Input your insturctions here."
    @instructions = gets.chomp.each_char do |d| # forgot putting chomp gives a lot of trouble!
        if d == "M"
          move
        else
          turn(d)
        end
      end

    if @x > 0 && @x <= x_max && @y > 0 && @y <= y_max #Final x y coordinate of the rover shoule be kept inside the plateau
      puts "The rover is at #{@x}, #{@y} and facing #{@direction}"
    else
      @x = x_max
      @y = y_max
      puts "The movement is beyond the plateau"
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
