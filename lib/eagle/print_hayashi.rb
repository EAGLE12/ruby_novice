# -*- coding: utf-8 -*-
names = ["小林","林","山田","岡本"]

=begin

以下のループの解説
|name|となっている部分の変数nameには、繰り返しのたびに
配列namesの要素が入っていいる。
そして、/林/と一致している部分を検証(”=で検証している)している。
1回目
name = "小林"
2回目
name = "林"
3回目
name = "山田"
4回目
name = "岡本"

=end

names.each do |name|
  if /林/ =~ name
    puts name
  end
end

