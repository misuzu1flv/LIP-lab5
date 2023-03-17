# frozen_string_literal: true

# text class
class Text
  def initialize(str)
    @text = str
    @n = 0
  end

  def to_s
    @text.squeeze(' ').strip
  end

  def correction
    @check = false
    @text.split.each do |x|
      x.split('').each do |y|
        if y.match('^(?i:[aeiouy]).*')
          @text.slice!(x)
          @check = true
        end
      end
      if @check
        @n += 1
        @check = false
      end
    end
    @text.squeeze(' ').strip
  end

  def gets_n
    @n
  end
end
