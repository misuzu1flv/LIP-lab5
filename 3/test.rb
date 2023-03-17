# frozen_string_literal: true

require_relative 'text'

RSpec.describe do
  before(:example) do
    @str = 50.times.map { (0...(rand(10))).map { ('a'..'z').to_a[rand(26)] }.join }.join(' ')
  end
  it 'Check results' do
    a = Text.new(@str)
    puts "Original string: #{a}"
    @str.split.each do |x|
      x.split('').each { |y| y.match('^(?i:[aeiouy]).*') ? @str.slice!(x) : nil }
    end
    puts "Expected string: #{@str.squeeze(' ').strip}"
    puts "Corrected by programm string: #{a.correction}"
    expect(@str.squeeze(' ').strip).to eq(a.correction)
  end
end
