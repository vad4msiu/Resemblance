require "resemblance/hashing"

module Resemblance
  class SimHash
    MAX_ERROR = 0.1
    FUNCTION_COUNT = (1 / (MAX_ERROR * MAX_ERROR)).round

    def initialize shingles = [], options = {}
      raise ArgumentError, "Shingles should be an array" unless shingles.is_a? Array
      @shingles = shingles
      @function_count = options[:function_count] || FUNCTION_COUNT
    end
  
    def signatures
      result = []
    
      @function_count.times do |function_index|
        result << find_min(function_index)
      end
    
      return result
    end

    private
  
    def find_min(function_index)
      min = Resemblance::Hashing.signature(@shingles[0], function_index)

      1.upto(@shingles.size - 1) do |i|
        hash = Hashing.signature(@shingles[i], function_index)
        min = hash if hash < min
      end

      return min;
    end
  end
end
