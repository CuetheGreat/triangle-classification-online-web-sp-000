class Triangle
  
  @@@all =[]
  
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c 
    self.class.all << self
  end
  
  def kind
    if ( a + b ) < c 
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    elsif a == b && b == c
      :equalateral
    elsif (a == b && a != c) || (b == c && c != a) || (c == a && a != b)
      :isosceles
    elsif
      
  end  
  
  
  class TriangleError < StandardError
    def message
      "Sides do not make a triangle"
    end
  end
end
