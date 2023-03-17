# frozen_string_literal: true

# calculations
class Calc
  include Math

  def initialize(value)
    @x = value
  end

  def calc
    if @x != 0
      @xcos = cos((5 * @x) / (1 - 6 * @x))**0.5
      @y = -@xcos / (@x**2)
    else
      @y = 'Cant devide by zero'
    end
  end

  def output
    @y
  end
end
