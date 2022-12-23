# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  total = 0
  if arr == 0
    return 0
  else
    arr.each do|item|
      total = total + item
    end
    total
  end
end

def max_2_sum arr
  temp1 = 0
  temp2 = 0
  arr.each do |item|
    if item > temp1
      temp1 = item
    end
  end
  arr.delete(temp1)
  arr.each do |item|
    if item > temp2
      temp2 = item
    end
  end
  return temp1 + temp2
end

def sum_to_n? arr, n
  hash = Hash.new(0)
  arr.each do|item|
    if hash.key? item
      return true
    else
      hash[n-item] = item
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s[0] == 'a'
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if s % 4 == 0
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

array = [1, 2, 3, 4, 5]
sum = max_2_sum(array)
puts sum
puts sum_to_n?([-1, -2, 3, 4, 5, -8], -3)