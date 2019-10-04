module Luhn


  def self.is_valid?(number)
    hold = number.to_s.split('').map(&:to_i)
    other = []
    doubled = []
    i = -2
    l = 2
    while l <= hold.length
      hold[i] = hold[i]*2
      if hold[i] >= 10
        hold[i] = hold[i]-9
      end
      i = i-2
      l = l+2
    end

    if hold.sum.even?

      return true
    else

      return false
    end

  end


end
Luhn.is_valid?(4194560385008504)
