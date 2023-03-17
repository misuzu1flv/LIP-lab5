# frozen_string_literal: true

require_relative 'students'

RSpec.describe do
  it 'Check results' do
    list = 'ИУ6-31Б Иванов Иван, ИУ6-32Б Петрова Катя, ИУ6-31Б Георгий Иванов'
    a = Students.new(list.split(', '))
    puts "Expected array: ['ИУ6-31Б 2', 'ИУ6-32Б 1']"
    puts "Output array: #{a.gets_studentcount}"
    expect(a.gets_studentcount).to eq(['ИУ6-31Б 2', 'ИУ6-32Б 1'])
  end
end
