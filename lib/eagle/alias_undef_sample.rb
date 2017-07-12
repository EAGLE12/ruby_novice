# coding: utf-8
class Animal
  def say
    "がおーー"
  end

  def hello
    "こんにちは"
  end

end

class Dog < Animal     #Dogクラスを、Animalクラスを使い拡張する
  alias old_say say    #sayメソッドに新しく名前を振り当てる

  def say
    "#{old_say}, わんんんんん"
  end

  undef hello   #Animalクラスのhelloメソッドを消去
end

obj = Dog.new
puts obj.old_say
puts obj.say  
