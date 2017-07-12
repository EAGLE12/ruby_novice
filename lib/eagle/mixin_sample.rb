# coding: utf-8
module MyModule
  #共通して提供したいメソッドなど
end

class MyClass1
  include MyModule
  #MyClass1に固有のメソッドなど
end

class Myclass2
  include MyModule
  #MyClass2に固有のメソッドなど
end

