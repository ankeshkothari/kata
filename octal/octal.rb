# Create octals of numbers.
# 233 # octal
# = 2*8^2 + 3*8^1 + 3*8^0
# = 2*64  + 3*8   + 3*1
# = 128   + 24    + 3
# = 155

# Octals should not work if number is 8 or 9. Its a 0-7 base.

class Octal
  attr_accessor :num
  def initialize(num)
    @num = num
  end

  def is_number?(string)
    true if Float(string) rescue false
  end

  def is_invalid?
    @num.split(//).include?("8") || @num.split(//).include?("9") || is_number?(@num) == false
  end

  def to_decimal
    return 0 if is_invalid?

    arr = @num.split(//)
    n = arr.size - 1 # power of first digit
    x = 0
    new_arr = []

    begin
      new_arr << arr[x].to_i*8**n

      x += 1 # go to next digit
      n -= 1 # reduce power as you go to next digit
    end until x == arr.size

    octal =  new_arr.reduce(&:+) # add all digits of new array
    p octal
  end

end

# puts 'Enter a positive number above 0 and we will give you its Octal value:'
# number = gets.chomp
# Octal.new(number)
