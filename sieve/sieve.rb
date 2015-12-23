# Create a program that uses Sieve of Eratosthenes to find primes
# https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes

class Sieve
  attr_accessor :num

  def initialize(num)
    @num  = num
  end

  def primes
    array = (2..@num).to_a

    x = 0

    begin
      value = array[x]
      inc = 2

      begin
        array.delete(value*inc)
        inc += 1
      end until value*inc > @num

      x += 1
    end until value == array.last

    p array

  end

end

Sieve.new(10).primes