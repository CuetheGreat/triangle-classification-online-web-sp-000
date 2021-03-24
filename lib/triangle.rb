class Triangle
  
  @@all =[]
  
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c 
    self.class.all << self
  end
  
  def self.all
    @@all
  end

  def kind
    
    if (@a == 0  || @b == 0 @c == 0)
      raise TriangleError
    end
    
    
    
    
    
    if @a == @b && @b == @c
      :equilateral
    elsif (@a == @b && @a != @c) || (@b == @c && @c != @a) || (@c == @a && @a != @b)
      :isosceles       
    elsif (@a != @b && @b != @c && @c != @a)
      :scalene
    end
    
    
  end
  
  
  class TriangleError < StandardError
    def message
      "Sides do not make a triangle"
    end
  end
end
