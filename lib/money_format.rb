class MoneyFormat
  def self.formatter(n)
    formatted = ""
    split_and_reversed = reverse(split_string(n))

    while(split_and_reversed.length > 3)
      formatted += split_and_reversed.slice!(0..2).join("")
      formatted += ","
    end

    formatted += split_and_reversed.join.to_s
    formatted.reverse
  end

  def self.split_string(n)
    n.split("")
  end

  def self.reverse(n)
    n.reverse
  end

  def self.slice_arr(n)
    n.slice!(0..2)
  end
end
