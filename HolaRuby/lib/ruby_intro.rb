# Parte 1

def sum (array)
    array.inject(0, :+)
  end

def max_2_sum (array)
  sorted_array = array.sort.reverse
  sorted_array[0, 2].inject(0, :+)
end

def sum_to_n? (array, n)
  return false if array.empty? || array.length == 1
  array.combination(2).any? { |a, b| a + b == n }
end

# Parte 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? (s)
  /^[b-df-hj-np-tv-z]/i.match?(s)
end

def binary_multiple_of_4? (s)
  /^(0|00|([01]+00))$/.match?(s)
end

# Parte 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'ISBN is empty' if isbn.empty?
    raise ArgumentError, 'Price is less than or equal to zero' if price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$#{'%.2f' % @price}"
  end
end
