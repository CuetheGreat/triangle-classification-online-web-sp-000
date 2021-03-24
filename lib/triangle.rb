class Triangle
  
  @@@all =[]
  
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c 
    self.class.all << self
  end
  
  def kind
    if ( a + b ) < c || 
      raise TriangleError
      rescue TriangleError => error
        error.message
      end
    end
  end  
  
  
  class TriangleError < StandardError
    def message
      "Sides do not make a triangle"
    end
  end
end
