# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.


class SimpleCalculator

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

class FancyCalculator < SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

simple = SimpleCalculator.new
fancy = FancyCalculator.new
whiz = WhizBangCalculator.new

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
puts
puts "Testing WhizBang Calculator.."
puts "5 + 3 = "
puts whiz.add(5, 3)
puts
puts "5 - 3 = "
puts whiz.subtract(5, 3)
puts
puts "5 * 3 = "
puts whiz.multiply(5, 3)
puts
puts "5 / 3 = "
puts whiz.divide(5, 3.0)
puts
puts "The square root of 16 ="
puts whiz.square_root(16)
puts
puts "Hypotenuse where sides are 4, 3 ="
puts whiz.hypotenuse(4, 3)
puts
puts "5 to the 3rd power ="
puts whiz.exponent(5, 3)