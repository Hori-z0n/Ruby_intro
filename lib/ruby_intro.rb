# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  total = 0
  if arr.empty?
    return 0
  else
    arr.each do|item|
      total = total + item
    end
    total
  end
end

def max_2_sum arr
  arr.empty? ? 0: arr.sort.last(2).reduce(:+)
end

def sum_to_n? arr, n
  arr.each do |i|
    arr.inject(i) do |num1,num2|
      if num1 + num2 == n
        return true
      else
        return false
      end
    end
  end
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  s = s.downcase
  if s.start_with?('a') or s.start_with?('e') or s.start_with?('i') or s.start_with?('o') or s.start_with?('u')
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s# 8 4 2 1
  if s[-1]==0 and s[-2]==0
#  if s % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_reader :isbn
  attr_accessor :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
    raise ArgumentError.new("ISBN is empty...fill it") unless isbn.length > 0
    raise ArgumentError.new("Price cannot be less than or equal to zero") unless price > 0
  end
  def price_as_string
    temp = sprintf("%.2f", price)
    temp.insert(0, "$")
    temp
  end
end
