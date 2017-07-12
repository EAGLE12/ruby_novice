# coding: utf-8
class HelloWorld     #class文
  def initialize(myname = "Ruby")  #initializeメソッド
    @name = myname
  end

  def hello
    puts "Hello, world. I am #{@name}."
  end
end

bob = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby = HelloWorld.new

bob.hello
alice.hello
