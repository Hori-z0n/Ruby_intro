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
  count = 0
  arr.each do |item|
    if item > n
      count += 1
    end
  end
  if count >= 2
    return true
  else
    return false
  end
end


# Part 2

def hello(name)
  reutrn "Hello " + name
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

rescue => exception
end
class BookInStock
  def def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end

  isbn
end


array = [1, 2, 3, 4, 5, 6, 7, 8]
array1 = [1, 1, 2, 2]
#puts sum(array)

#puts binary_multiple_of_4? 999
#puts max_2_sum(array)
#puts starts_with_consonant?("aHEllo")
puts sum_to_n?(array1, 2)
#puts array