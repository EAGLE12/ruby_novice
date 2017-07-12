# coding: utf-8

class C1　　　　　#C1クラスを定義
  def hello       #helloを定義
    "Hello"
  end
end

class C2 < C1　　　　　#C1クラスを拡張してC2クラスを再定義
  alias old_hello hello    #別名old_helloを設定

  def hello
    "#{old_hello}, again"
  end
end

obj = C2.new
puts obj.old_hello
puts obj.hello
