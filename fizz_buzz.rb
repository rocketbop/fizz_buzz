def is_multiple_of_three?(number)
  is_number_multiple_of_multiplier?(number, 3)
end

def is_multiple_of_five?(number)
  is_number_multiple_of_multiplier?(number, 5)
end

def is_multiple_of_fifteen?(number)
  is_number_multiple_of_multiplier?(number, 15)
end

def is_number_multiple_of_multiplier?(number, multiplier)
  (number % multiplier).zero?
end

def fizzbuzz(number)
  case
  when is_multiple_of_fifteen?(number)
    "fizzbuzz"
  when is_multiple_of_three?(number)
    "fizz"
  when is_multiple_of_five?(number)
    "buzz"
  else
    number
  end
end

def build_enumerator
  Enumerator.new do |yielder, n: 1|
    100.times do
      yielder.yield n
      n += 1
    end
  end
end
def go
  enumerator = build_enumerator
  enumerator.each do |number|
    puts fizzbuzz(number)
  end
end

go

