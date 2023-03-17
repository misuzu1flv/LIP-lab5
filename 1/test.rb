# frozen_string_literal: true

require_relative 'calc'
RSpec.describe do
  include Math
  before(:example) do
    @x = rand(10)
  end
  it 'Check result' do
    a = Calc.new(@x)
    a.calc
    puts "programm output: #{a.output}"
    xcos = cos((5 * @x) / (1 - 6 * @x))
    y = -1 * (xcos / (@x**4))**0.5
    puts "tested value: #{y}"
    expect(y.round(2)).to eq(a.output.round(2))
  end
  it 'Check result when x=0' do
    a = Calc.new(0)
    expect(a.calc).to eq('Cant devide by zero')
  end
end
