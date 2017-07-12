# coding: utf-8
module HelloModule   #module文
  Version = "1.0"    #定数の定義
  Created = "Masatoshi Kowaki"

  def hello(name)    #メソッドの定義
    puts "Hello, #{name}."
  end
  module_function :hello  #helloをモジュール関数として公開する
end

p HelloModule::Version
HelloModule.hello("Alice")

include HelloModule
p Version
p Created
hello("Alice")

