module Enumerable
  # Your code goes here

  def my_each_with_index
    index = 0
    self.each do |element|
      yield(element, index)
    index += 1
    end
  end

  def my_select
    arr =[]
    self.each do |element|
      arr << element if yield(element)
    end

    arr
  end

  def my_all?
    result = true
    self.each do |element|
      result = result && yield(element)
      return result if !result
    end

    result
  end

  def my_none?
    result = true
    self.each do |element|
      result = result && !yield(element)
      return result if !result
    end

    result
  end

  def my_count
    count = 0
    if !block_given?
      self.each do |elem|
        count += 1
      end
    else
      self.each do |elem|
        count += 1 if yield(elem)
      end
    end

    count
  end



end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    self.each do |element|
      yield(element)
    end
  end
end
