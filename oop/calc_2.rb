# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module BasicMath

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class SimpleCalculator

  include BasicMath

end

class FancyCalculator
  
  include BasicMath

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:

simple = SimpleCalculator.new
fancy = FancyCalculator.new

puts "Testing Simple Calculator.."
puts "5 + 3 = "
puts simple.add(5, 3)
puts
puts "5 - 3 = "
puts simple.subtract(5, 3)
puts
puts "5 * 3 = "
puts simple.multiply(5, 3)
puts
puts "5 / 3 = "
puts simple.divide(5, 3.0)
puts
puts
puts "Testing Fancy Calculator.."
puts "5 + 3 = "
puts fancy.add(5, 3)
puts
puts "5 - 3 = "
puts fancy.subtract(5, 3)
puts
puts "5 * 3 = "
puts fancy.multiply(5, 3)
puts
puts "5 / 3 = "
puts fancy.divide(5, 3.0)
puts
puts "The square root of 16 ="
puts fancy.square_root(16)