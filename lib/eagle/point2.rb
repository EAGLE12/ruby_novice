# coding: utf-8
#　P.176らへんの内容

class Point
  attr_accessor :x, :y

  def initialize(x = 0, y = 0)
    @x, @y = x, y
  end
  def inspect    #pメソッドで「(x,y)」と表示する
    "(#{x},#{y})"
  end

  def + (other)   #x, y のそれぞれを足す  #定義可能な単項演算子は+, -, ~, ! の4つ
    self.class.new(x + other.x, y + other.y)
    #(1) self.class.new(x + other.x, y + other.y)
    #(2) Point.new(x + other.x, y + other.y
    #(1), (2) のどちらでも意味は同じ
  end

  def ~@ 
    Point.new(y,x)
  end
  
  def - (other)   #x, yのそれぞれを引く
    self.class.new(x - other.x, y - other.y)
    #(1) self.class.new(x - other.x, y - other.y)
    #(2) Point.new(x - other.x, y - other.y
    #(1), (2) のどちらでも意味は同じ
  end
end

point0 = Point.new(3, 6)
point1 = Point.new(1, 8)

p point0
p point1
p point0 + point1
p point0 - point1
puts "\n"
p ~point1
