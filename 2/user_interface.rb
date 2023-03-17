# frozen_string_literal: true

require_relative 'students'
puts 'Введите список учеников:'
list = gets
a = Students.new(list.split(', '))
if a.check.nil?
  puts 'Распределение учеников по группам: '
  puts a.gets_studentcount
else
  puts 'Проверьте введённый список'
end
