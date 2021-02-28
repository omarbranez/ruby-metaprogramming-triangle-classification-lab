class Triangle
  # write code here
  attr_reader :side_1, :side_2, :side_3 #we're not modifying them

    def initialize(side_1, side_2, side_3)
      @side_1 = side_1 
      @side_2 = side_2 
      @side_3 = side_3      
    end

    def kind
      error_check
      if side_1 == side_2 && side_2 == side_3 #all sides equal
          :equilateral
        elsif
        side_1 == side_2 || side_2 == side_3 || side_1 == side_3 #at least one matching pair
          :isosceles
        else
          :scalene
      end
    end
      
    def error_check
        check_array = [side_1, side_2, side_3].sort #this way, any negatives or 0s will fall to the first index
        raise TriangleError if check_array[0] <= 0 || check_array[0] + check_array[1] <= check_array[2] # a side cannot be negative or 0. the sum of any two sides must be greater than the third.   
    end
  
  class TriangleError < StandardError 
    # if we had a method here, it would be referenced as rescue
  end
    

end