# frozen_string_literal: true

require_relative 'calc'
puts 'Введите x: '
x = gets.to_f
a = Calc.new(x)
a.calc
puts "Результат: #{a.output}"
