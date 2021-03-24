class Triangle
  
  @@@all =[]
  
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c 
    self.class.all << self
  end
  
  def kind
    if( a + b ) < c
      raise TriangleError
      rescue TriangleError => 
        message "sides do not match"
    end
  end  
  
  
  class TriangleError < StandardError
    
  end
end
