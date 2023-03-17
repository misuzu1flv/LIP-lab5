# frozen_string_literal: true

# class of students
class Students
  def initialize(arr)
    @list = arr
    @list_groups = []
    gets_groups
  end

  def check
    @list.find { |x| x.split[1].nil? }
  end

  def gets_groups
    @list.each { |x| @list_groups += [x.split[0]] }
    @list_groups
  end

  def gets_studentcount
    list_return = []
    list_groups_u = @list_groups.uniq
    list_groups_u.each { |x| list_return.append(x.to_s + ' ' + @list_groups.count { |i| i == x }.to_s) }
    list_return
  end
end
