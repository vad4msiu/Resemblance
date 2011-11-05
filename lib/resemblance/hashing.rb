module Hashing
  def self.signature(str, function_index)
    result = 1;

    0.upto(str.length - 1) do |i|
      result = (function_index * result + str[i].ord) & 0xFFFFFFFF;
    end

    return result
  end
end