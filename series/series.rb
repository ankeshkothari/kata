class Series
  def initialize(num)
    @num = num
  end

  def is_slice_longer?
    @sl > @num.size
  end

  def slices(sl)
    @sl = sl

    fail ArgumentError.new("Slice is longer than input.") if is_slice_longer?

    x = 0
    array = []

    begin
      array << @num[x,sl].split(//).map { |x| x.to_i }
      x += 1
    end until x == @num.size-sl+1

    p array

  end

end


