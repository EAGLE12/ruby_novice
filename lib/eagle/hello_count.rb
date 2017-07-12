# coding: utf-8
=begin

"変数の種類について復習"

>ローカル変数
>>(Ex) name, num, count .....

>グローバル変数
>>(Ex) $name, $num, $count .....

>インスタンス変数
>>(Ex) @name, @num, @count .....

>クラス変数
>>(Ex) @@name, @@num, @@count .....

=end

class HellowCount
  
  #クラス変数 @@count
  @@count = 0        #helloメソッドの呼びだし回数をカウントする

  def HellowCount.count   #呼び出し回数を参照するためのクラスメソッド
    @@count
  end

  def initialize(myname = "Ruby")
    #インスタンス変数 @name
    @name = myname
  end

  def hello
    @@count += 1
    puts "Hello, world. I am #{@name}.\n"
  end
end 

bob = HellowCount.new("Bob")
alice = HellowCount.new("Alice")
ruby = HellowCount.new

puts "呼び出し回数: #{HellowCount.count}回"
bob.hello
puts "呼び出し回数: #{HellowCount.count}回"
alice.hello
puts "呼び出し回数: #{HellowCount.count}回"
ruby.hello
puts "呼び出し回数: #{HellowCount.count}回"

