# coding: utf-8
p "                 [0 ,1 ,2 ,3 ,4 ,5 ,6 ]"
p "RingArrayの中身: [日,月,火,水,木,金,土]"

class RingArray < Array    #スーパークラスを指定する
  def [] (i)               #演算子[ ]の再設定
    idx = i % size         #新しいインデックスを求める
    puts "idx: #{idx}\ni: #{i}\nsize: #{size}"
    super (idx)            #スーパークラスの同名のメソッドを呼ぶ
  end
end

wday = RingArray["日","月","火","水","木","金","土"]
p wday[6]
p wday[11]
p wday[15]
p wday[-1]
