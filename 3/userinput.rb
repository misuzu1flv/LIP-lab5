# frozen_string_literal: true

require_relative 'text'

puts 'Input words separated by spaces'
a = gets
b = Text.new(a)
puts "Original string: #{b}"
if b.correction == ''
  puts 'ERROR: All words have cyllables in them'
else
  puts "Corrected string: #{b}"
  puts "Number of words with cyllables: #{b.gets_n}"
end
